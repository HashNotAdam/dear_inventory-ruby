# frozen_string_literal: true

module DearInventory
  module Models
    class Sales < DearInventory::Model
      class InvoiceLine < Line
        fields(
          Account: {
            name: :account,
            type: :String,
          }
        )
      end
    end
  end
end
