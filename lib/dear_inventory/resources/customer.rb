# frozen_string_literal: true

module DearInventory
  class Customer < Resource
    class << self
      # Customer
      #
      # @param params [Hash] URL query string parameters that conform to
      #   DearInventory::Parameters::Customer::Index
      def index(params = {})
        new.request(:get, params:, model:)
      end

      alias call index

      def show(params = {})
        new.request(:get, endpoint: "show", model:, params:)
      end

      def create(params = {})
        new.request(:post, endpoint: "create", model:, params:)
      end

      def update(params = {})
        new.request(:put, endpoint: "update", model:, params:)
      end

      private

      def model = DearInventory::Models::Customers
    end
  end
end
