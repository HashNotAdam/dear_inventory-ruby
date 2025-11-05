# frozen_string_literal: true

module DearInventory
  module IsASubclass
    def is_a?(comparison_class)
      return true if super

      return self <= comparison_class if instance_of?(Class)

      false
    end
  end
end
