# frozen_string_literal: true

module DearInventory
  class RequestError < Error
    attr_reader :response

    def initialize(message = nil, response = nil)
      super(message)

      @response = response
    end
  end
end
