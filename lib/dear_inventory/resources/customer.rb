# frozen_string_literal: true

module DearInventory
  class Customer < Resource
    class << self
      # Customer
      #
      # @param params [Hash] URL query string parameters that conform to
      #   DearInventory::Parameters::Customer::Index
      def index(params = {})
        new.request(
          :get, params: params, model: DearInventory::Models::Customers
        )
      end

      alias call index
    end
  end
end
