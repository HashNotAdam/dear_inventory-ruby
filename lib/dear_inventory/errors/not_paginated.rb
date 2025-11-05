# frozen_string_literal: true

module DearInventory
  class NotPaginatedError < Error
    def initialize(message = nil, uri:)
      message ||= "The endpoint (#{uri}) is not paginated"
      super(message)
    end
  end
end
