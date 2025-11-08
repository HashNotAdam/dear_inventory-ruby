# frozen_string_literal: true

module DearInventory
  class Validator
    DEFAULT_OPTIONS = {
      limit: nil,
      max_length: nil,
      values: nil,
    }.freeze
    private_constant :DEFAULT_OPTIONS

    def self.call(field_name, value, options: DEFAULT_OPTIONS)
      new(field_name, value, options: options).call
    end

    def initialize(field_name, value, options: DEFAULT_OPTIONS)
      @field_name = field_name
      @value = value

      @limit = options[:limit]
      @max_length = options[:limit]
      @values = options[:values]
    end

    private

    def call; end

    def raise_error(message)
      raise ValidationError, "#{@field_name} is invalid, #{message}"
    end
  end
end
