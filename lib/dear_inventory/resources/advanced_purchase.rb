# frozen_string_literal: true

module DearInventory
  class AdvancedPurchase < Resource
    class << self
      # Advanced Purchase
      #
      # @param params [Hash] URL query string parameters that conform to
      #   DearInventory::Parameters::AdvancedPurchase::Show
      def show(params = {})
        new.request(
          :get,
          endpoint: "show",
          model: DearInventory::Models::AdvancedPurchase,
          params: params
        )
      end
    end
  end
end
