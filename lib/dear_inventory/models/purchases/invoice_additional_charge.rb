# frozen_string_literal: true

module DearInventory
  module Models
    class Purchases < DearInventory::Model
      class InvoiceAdditionalCharge < AdditionalCharge
        fields(
          Reference: {
            name: :reference,
            type: :String,
          },
          Account: {
            name: :account,
            type: :String,
          }
        )
      end
    end
  end
end
