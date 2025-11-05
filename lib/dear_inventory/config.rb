# frozen_string_literal: true

require "logger"

module DearInventory
  class Config
    attr_accessor :account_id, :key, :logger

    def initialize
      @logger = Logger.new($stdout)
      @logger.level = Logger::WARN
    end

    def environment
      DearInventory::Environment
    end

    def environment=(value)
      DearInventory::Environment.set(value)
    end

    def require(param)
      value = public_send(param)
      return value unless value.nil? || value.empty?

      require_error(param)
    end

    def require_parameter(param)
      require(param)
    rescue ArgumentError => e
      message = <<~MESSAGE
        #{e.message}
        Alternatively, you can pass dynamic values with your request parameters
      MESSAGE
      raise ArgumentError, message
    end

    private

    def require_error(param)
      raise(
        ArgumentError,
        <<~MESSAGE
          #{param} is required but hasn't been set.
          DearInventory.configure do |config|
            config.#{param} = "value"
          end
        MESSAGE
      )
    end
  end
end
