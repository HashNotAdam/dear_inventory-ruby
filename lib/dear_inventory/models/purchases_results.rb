# frozen_string_literal: true

module DearInventory
  module Models
    class PurchasesResults < DearInventory::Model
      fields(
        Total: {
          name: :total,
          type: :Integer,
        },
        Page: {
          name: :page,
          type: :Integer,
        },
        PurchaseList: {
          name: :purchases,
          type: :ResultSet,
          model: DearInventory::Models::Purchases,
        }
      )
    end
  end
end
