# frozen_string_literal: true

module DearInventory
  class Request
    def self.call(parameters, num_previous_records: 0)
      new(parameters, num_previous_records: num_previous_records).call
    end

    def initialize(parameters, num_previous_records: 0)
      @parameters = parameters
      @num_previous_records = num_previous_records
      @retries = 0
    end

    def call
      options = request_params(@parameters.action, @parameters.params)
      response = HTTP.headers(headers).
        public_send(@parameters.action, @parameters.uri, options)

      DearInventory::Response.new(
        response: response,
        request: @parameters,
        num_previous_records: @num_previous_records
      )
    rescue DearInventory::APILimitError, HTTP::ConnectionError => e
      retry_request(e)
    end

    private

    def headers
      {
        "Content-Type": "application/json",
        "api-auth-accountid": DearInventory.config.require(:account_id),
        "api-auth-applicationkey": DearInventory.config.require(:key),
      }
    end

    def request_params(action, params)
      if %i[get delete].include?(action)
        { params: params.to_h }
      else
        { json: params.to_h }
      end
    end

    ERROR_MESSAGE_PREFIXES = {
      DearInventory::APILimitError => "The API request limit was reached",
      HTTP::ConnectionError => "There was an error connecting to the API",
    }.freeze
    MAX_RETRIES = 4
    RETRY_DELAY = 5
    private_constant :ERROR_MESSAGE_PREFIXES, :MAX_RETRIES, :RETRY_DELAY
    def retry_request(error)
      @retries += 1
      raise if @retries >= MAX_RETRIES

      message_prefix = ERROR_MESSAGE_PREFIXES[error.class]
      retry_time = @retries * RETRY_DELAY

      DearInventory.config.logger.warn(
        "#{message_prefix} while fetching #{@parameters.uri}. " \
        "The request will be tried again in #{retry_time} seconds"
      )

      sleep(retry_time)
      call
    end
  end
end
