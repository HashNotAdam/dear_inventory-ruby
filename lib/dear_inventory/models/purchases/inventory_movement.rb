# frozen_string_literal: true

module DearInventory
  module Models
    class Purchases < DearInventory::Model
      class InventoryMovement < DearInventory::Model
        fields(
          TaskID: {
            name: :task_id,
            type: :Guid,
          },
          ProductID: {
            name: :product_id,
            type: :Guid,
          },
          Date: {
            name: :date,
            type: :Date,
          },
          COGS: {
            name: :cogs,
            type: :BigDecimal,
          }
        )
      end
    end
  end
end
