# frozen_string_literal: true

module DearInventory
  module Helpers
    module VCR
      RE_RECORD_INTERVAL = 86_400

      def self.with_cassette(path, &)
        ::VCR.use_cassette(path, re_record_interval: RE_RECORD_INTERVAL, &)
      end
    end
  end
end
