# frozen_string_literal: true

module DearInventory
  class EndpointClass
    def self.call(class_type:, resource_class:, endpoint:)
      new(
        class_type: class_type,
        resource_class: resource_class,
        endpoint: endpoint
      ).call
    end

    def initialize(class_type:, resource_class:, endpoint:)
      @class_type = class_type
      @resource_class = resource_class
      @endpoint = endpoint || "Index"
      @class_name = nil
    end

    def call
      Object.const_get(class_name) if Object.const_defined?(class_name)
    end

    private

    def class_name
      @class_name ||= begin
        name = ["DearInventory"]
        name << @class_type
        name << @resource_class.name.split("::").last
        name << @endpoint.split("_").map(&:capitalize).join
        name.join("::")
      end
    end
  end
end
