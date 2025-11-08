# frozen_string_literal: true

module DearInventory
  module Validators
    class Array < DearInventory::Validator
      def call
        value = instance_variable_get(:@value)
        return if value.nil?
        return if value.is_a?(::Array)

        raise_error("expected an Array but received #{value.inspect}")
      end
    end
  end
end
