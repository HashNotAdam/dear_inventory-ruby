# frozen_string_literal: true

module DearInventory
  class TestResponse < Response
    extend DearInventory::IsASubclass

    attr_reader :request, :response

    def initialize(request:, body:, num_previous_records: 0)
      @request = request
      @num_previous_records = num_previous_records

      @fields = nil
      @http_status = nil
      @load_full_record = nil
      @num_records_paged = nil
      @uri = nil

      raise_error unless success?

      @model = @request.model.new(body)
      assign_values
    end

    def http_status
      200
    end
  end
end
