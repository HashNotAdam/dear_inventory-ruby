# frozen_string_literal: true

module DearInventory
  class Product < Resource
    class << self
      # Product
      #
      # @param params [Hash] URL query string parameters that conform to
      #   DearInventory::Parameters::Product::Index
      def index(params = {})
        new.request(
          :get, params: params, model: DearInventory::Models::Products
        )
      end

      alias call index
    end
  end
end
