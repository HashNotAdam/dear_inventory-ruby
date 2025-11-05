# frozen_string_literal: true

module DearInventory
  module Models
    class ShippingAddress < Address
      fields(
        Company: {
          name: :company,
          type: :String,
        },
        Contact: {
          name: :contact,
          type: :String,
        },
        ShipToOther: {
          name: :ship_to_other,
          type: :Boolean,
        }
      )
    end
  end
end
