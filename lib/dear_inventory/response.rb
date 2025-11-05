# frozen_string_literal: true

module DearInventory
  class Response
    extend DearInventory::IsASubclass

    attr_reader :request, :response

    # rubocop:disable Metrics/MethodLength
    def initialize(request:, response:, num_previous_records: 0)
      @request = request
      @response = response
      @num_previous_records = num_previous_records

      @fields = nil
      @http_status = nil
      @load_full_record = nil
      @num_records_paged = nil
      @uri = nil

      raise_error unless success?

      body_copy = body
      @model = @request.model.new(body_copy)
      assign_values
    end

    # rubocop:enable Metrics/MethodLength
    def fields
      @fields ||= begin
        values = @request.model.const_get(:FIELDS).values.map do |field|
          field[:name]
        end
        values.unshift(:records) if @model.respond_to?(:records)
        values
      end
    end

    def error
      if body.respond_to?(:fetch)
        body_copy = body
        return body_copy.fetch("Exception", nil)
      end

      body
    end

    def headers
      @response.headers
    end

    def http_status
      @http_status ||= @response.status.code
    end

    def paginated?
      @model.respond_to?(:page)
    end

    def each(&block)
      raise_not_paginated unless paginated?

      response = self
      loop do
        iterate_over_records(response, block)
        break unless response.next_page?

        response = response.next_page
      end
    end

    def next_page
      raise_not_paginated unless paginated?
      raise DearInventory::NoMorePagesError unless next_page?

      request = @request.dup
      request.params.page = @model.page + 1

      DearInventory::Request.(request, num_previous_records: num_records_paged)
    end

    def next_page?
      raise_not_paginated unless paginated?

      num_records_paged < total
    end

    def num_records_paged
      @num_records_paged ||= begin
        raise_not_paginated unless paginated?

        @num_previous_records + records.count
      end
    end

    def raise_not_paginated
      raise DearInventory::NotPaginatedError.new(uri)
    end

    def success?
      http_status == 200
    end

    def uri
      @uri ||= @response.uri.to_s
    end

    protected

    def body
      string_body = @response.body.to_s
      parsed_body = JSON.parse(string_body)

      if parsed_body.is_a?(Array)
        parsed_body.first
      else
        parsed_body
      end
    rescue JSON::ParserError
      string_body
    end

    private

    def assign_values
      fields.each { |field| define_alias_method(field) }
    end

    def define_alias_method(method_name)
      define_singleton_method(method_name) do
        @model.public_send(method_name)
      end
    end

    API_LIMIT_ERROR = "You have reached 60 calls per 60 seconds API limit."
    private_constant :API_LIMIT_ERROR
    def raise_error
      raise DearInventory::BadRequestError.new(error, self) if http_status == 400

      raise DearInventory::APILimitError if http_status == 503 && error == API_LIMIT_ERROR

      raise DearInventory::Error.
        new("Unknown error (#{http_status}): #{error}")
    end

    def iterate_over_records(response, block)
      return if response.records.nil?

      response.records.each do |record|
        record = record.full_record if load_full_record?
        block.call(record)
      end
    end

    def load_full_record?
      @load_full_record ||=
        records.first.respond_to?(:full_record)
    end
  end
end
