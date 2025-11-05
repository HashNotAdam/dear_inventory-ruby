# frozen_string_literal: true

module DearInventory
  module Models
    class BillOfMaterialsService < DearInventory::Model
      fields(
        ComponentProductID: {
          name: :component_product_id,
          type: :Guid,
        },
        Name: {
          name: :name,
          type: :String,
        },
        Quantity: {
          name: :quantity,
          type: :Float,
        },
        ExpenseAccount: {
          name: :expense_account,
          type: :String,
        },
        PriceTier: {
          name: :price_tier,
          type: :Integer,
        }
      )
    end
  end
end
