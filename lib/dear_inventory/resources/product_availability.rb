# frozen_string_literal: true

module DearInventory
  class ProductAvailability < Resource
    class << self
      # ProductAvailability
      #
      # @param params [Hash] URL query string parameters that conform to
      #   DearInventory::Parameters::ProductAvailability::Index
      def index(params = {})
        new.request(
          :get,
          params: params,
          model: DearInventory::Models::ProductAvailabilityResults
        )
      end

      alias call index
    end

    private

    def resource_uri(_endpoint)
      "#{self.class.const_get(:URI_BASE)}/ref/productavailability"
    end
  end
end
