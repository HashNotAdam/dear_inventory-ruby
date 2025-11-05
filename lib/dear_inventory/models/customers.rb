# frozen_string_literal: true

module DearInventory
  module Models
    class Customers < DearInventory::Model
      fields(
        Total: {
          name: :total,
          type: :Integer,
        },
        Page: {
          name: :page,
          type: :Integer,
        },
        CustomerList: {
          name: :customers,
          type: :ResultSet,
          model: DearInventory::Models::Customer,
        }
      )
    end
  end
end
