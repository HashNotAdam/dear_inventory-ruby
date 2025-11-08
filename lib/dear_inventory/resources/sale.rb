# frozen_string_literal: true

module DearInventory
  class Sale < Resource
    class << self
      # Sales
      #
      # @param params [Hash] URL query string parameters that conform to
      #   DearInventory::Parameters::Sale::Index
      def index(params = {})
        new.request(
          :get,
          endpoint: "index",
          model: DearInventory::Models::SalesResults,
          params: params
        )
      end

      alias call index

      # Sale
      #
      # @param params [Hash] URL query string parameters that conform to
      #   DearInventory::Parameters::Sale::Show
      def show(params = {})
        new.request(
          :get,
          endpoint: "show",
          model: DearInventory::Models::Sale,
          params: params
        )
      end

      # Sale
      #
      # @param params [Hash] URL query string parameters that conform to
      #   DearInventory::Parameters::Sale::Delete
      def delete(params = {})
        new.request(
          :delete,
          endpoint: "delete",
          model: DearInventory::Models::Sale,
          params: params
        )
      end
    end

    private

    def resource_uri(endpoint)
      return super unless endpoint == "index"

      "#{self.class.const_get(:URI_BASE)}/salelist"
    end
  end
end
