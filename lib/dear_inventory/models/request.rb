# frozen_string_literal: true

module DearInventory
  module Models
    class Request < DearInventory::Model
      attr_reader :action, :model, :params, :uri

      def initialize(parameters)
        @action = parameters[:action]
        @model = parameters[:model]
        @params = parameters[:params]
        @uri = parameters[:uri]
      end
    end
  end
end
