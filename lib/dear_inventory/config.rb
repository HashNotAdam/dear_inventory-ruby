# typed: ignore
# frozen_string_literal: true

require "logger"

module DearInventory
  class Config
    extend T::Sig

    sig { returns(T.nilable(String)) }
    attr_accessor :account_id

    sig { returns(T.nilable(String)) }
    attr_accessor :key

    sig { returns(T.untyped) }
    attr_accessor :logger

    sig { void }
    def initialize
      @logger = Logger.new(STDOUT)
      @logger.level = Logger::WARN
    end

    sig { returns(DearInventory::Environment.class) }
    def environment
      DearInventory::Environment
    end

    sig { params(value: Symbol).void }
    def environment=(value)
      DearInventory::Environment.set(value)
    end

    sig { params(param: Symbol).returns(String) }
    def require(param)
      value = public_send(param)
      return value unless value.nil? || value.empty?

      require_error(param)
    end

    sig { params(param: Symbol).returns(String) }
    def require_parameter(param)
      require(param)
    rescue ArgumentError => e
      message = e.message + "\n" \
        "Alternatively, you can pass dynamic values with your request " \
        "parameters"
      raise ArgumentError, message
    end

    private

    sig { params(param: Symbol).void }
    def require_error(param)
      raise(
        ArgumentError,
        "#{param} is required but hasn't been set.\n" \
          "DearInventory.configure do |config|\n" +
          %(  config.#{param} = "value") + "\n" \
          "end"
      )
    end
  end
end
