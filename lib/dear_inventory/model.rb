# frozen_string_literal: true

require "bigdecimal/util"
require "json"

module DearInventory
  class Model
    extend DearInventory::IsASubclass

    def self.fields(fields)
      ancestor = ancestors[1]
      fields = ancestor.const_get(:FIELDS).merge(fields) if ancestor.const_defined?(:FIELDS)
      const_set(:FIELDS, fields.freeze)

      define_readers
    end

    def self.define_readers
      enumerate_fields do |_, specifications|
        __send__(:attr_reader, specifications[:name])

        alias_method :records, specifications[:name] if specifications[:type] == :ResultSet
      end
    end

    def self.enumerate_fields(&)
      const_get(:FIELDS).each(&)
    end

    def initialize(values = nil)
      return if values.nil?

      self.class.enumerate_fields do |response_name, specifications|
        value = field_value(response_name, values, specifications)
        instance_variable_set(:"@#{specifications[:name]}", value)
      end
    end

    def to_h
      {}.tap do |hash|
        self.class.enumerate_fields do |_, specifications|
          key = specifications[:name]
          hash[key] = public_send(key)
        end
      end
    end

    private

    def field_value(response_name, values, specifications)
      model = specifications[:model]
      value = values[response_name.to_s]
      return if value == ""

      format_value(value, specifications[:type], model)
    end

    # rubocop:disable Metrics/CyclomaticComplexity
    # rubocop:disable Metrics/MethodLength
    def format_value(value, type, model)
      case type
      when :Array, :ResultSet
        initialize_array_values_in_models(value, model)
      when :BigDecimal
        value.to_d
      when :Date
        ::Date.parse(value) unless value.nil?
      when :DateTime
        ::DateTime.parse(value) unless value.nil?
      when :Hash
        model.new(value)
      else
        value
      end
    end

    # rubocop:enable Metrics/CyclomaticComplexity
    # rubocop:enable Metrics/MethodLength
    def initialize_array_values_in_models(array, model)
      return if array.nil?

      array.each_with_object([]) do |values, records|
        records << model.new(values)
      end
    end
  end
end
