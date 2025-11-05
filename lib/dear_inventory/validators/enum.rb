# frozen_string_literal: true

module DearInventory
  module Validators
    class Enum < DearInventory::Validator
      def call
        value = instance_variable_get(:@value)
        return if value.nil?
        return if @values.include?(value)

        raise_error(
          "expected one of " \
          "#{@values.map(&:inspect).join(", ")} " \
          "but received #{value.inspect}"
        )
      end
    end
  end
end
