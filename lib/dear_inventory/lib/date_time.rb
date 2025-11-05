# frozen_string_literal: true

module DearInventory
  class DateTime
    def initialize(date)
      @date = date
    end

    def to_s
      @date.strftime("%FT%T")
    end
  end
end
