# frozen_string_literal: true

module DearInventory
  class Parameters
    extend DearInventory::IsASubclass

    def initialize(params)
      @values = {}
      assign_params(params)
    end

    class << self
      def fields(fields)
        const_set(:FIELDS, fields.freeze)

        fields.each do |name, specifications|
          define_method_for_validator(name, specifications)
        end
      end

      def convert(resource_class, endpoint, params)
        params_class = endpoint_class(resource_class, endpoint)

        convert_with_params_class(
          endpoint: endpoint, params_class: params_class,
          resource_class: resource_class, params: params
        )
      end

      private

      def endpoint_class(resource_class, endpoint)
        DearInventory::EndpointClass.(
          class_type: "Parameters",
          resource_class: resource_class,
          endpoint: endpoint
        )
      end

      def define_method_for_validator(name, specifications)
        case specifications[:type]
        when :Enum
          define_enum_method(name, specifications)
        when :String
          define_string_method(name, specifications)
        else
          define_method_without_options(name, specifications)
        end
      end

      def define_enum_method(name, specifications)
        validator = DearInventory::Validators::Enum
        options = {
          values: specifications[:values],
        }
        define_method_with_options(name, validator, options)
      end

      def define_string_method(name, specifications)
        validator = DearInventory::Validators::String
        options = {
          max_length: specifications[:max_length],
        }
        define_method_with_options(name, validator, options)
      end

      def define_method_with_options(name, validator, options)
        define_method("#{name}=") do |value|
          validator.(
            name,
            value,
            options: options
          )

          instance_variable_get(:@values)[name] = value
        end
      end

      def define_method_without_options(name, specifications)
        validator = Object.const_get(
          "DearInventory::Validators::#{specifications[:type]}"
        )
        define_method("#{name}=") do |value|
          validator.(name, value)
          instance_variable_get(:@values)[name] = value
        end
      end

      def convert_with_params_class(
        params_class:, resource_class:, endpoint:, params:
      )
        return params_class.new(params) unless params_class.nil?

        message = "No parameters class can be found for resource, " \
                  "#{resource_class}, with endpoint #{endpoint}"
        raise ArgumentError, message
      end
    end
    def to_h
      self.class.
        const_get(:FIELDS).
        each_with_object({}) do |(field_name, specifications), hash|
          value = parameter_value(field_name, specifications)
          next if value.nil?

          hash[specifications[:property]] = value
        end
    end

    private

    def parameter_value(field_name, specifications)
      value = @values[field_name]
      Validators::Required.(field_name, value) if specifications[:required]

      if value.respond_to?(:strftime)
        ::DearInventory::DateTime.new(value).to_s
      else
        value
      end
    end

    def assign_params(params)
      params.each do |name, value|
        formatted_value =
          if value.is_a?(Array)
            value.map { |record| record.transform_keys { |key| key.to_s.titleize.delete(" ") } }
          else
            value
          end

        public_send(:"#{name}=", formatted_value)
      end
    end
  end
end
