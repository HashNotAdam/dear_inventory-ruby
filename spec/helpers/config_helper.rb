# typed: strong
# frozen_string_literal: true

module DearInventory
  module Helpers
    class Config
      extend T::Sig

      sig { void }
      def self.configure
        DearInventory.configure do |config|
          config.account_id = ENV.fetch("ACCOUNT_ID", nil)
          config.key = ENV.fetch("KEY", nil)
        end
      end
    end
  end
end
