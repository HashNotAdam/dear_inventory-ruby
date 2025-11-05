# frozen_string_literal: true

module DearInventory
  class Purchase < Resource
    class << self
      # Purchases
      #
      # @param params [Hash] URL query string parameters that conform to
      #   DearInventory::Parameters::Purchase::Index
      def index(params = {})
        new.request(
          :get,
          endpoint: "index",
          model: DearInventory::Models::PurchasesResults,
          params: params
        )
      end

      alias call index

      # Purchase
      #
      # @param params [Hash] URL query string parameters that conform to
      #   DearInventory::Parameters::Purchase::Show
      def show(params = {})
        new.request(
          :get,
          endpoint: "show",
          model: DearInventory::Models::Purchase,
          params: params
        )
      end
    end

    private

    def resource_uri(endpoint)
      suffix =
        case endpoint
        when "index"
          "/purchaselist"
        when "show"
          "/purchase"
        end
      self.class.const_get(:URI_BASE) + suffix
    end
  end
end
