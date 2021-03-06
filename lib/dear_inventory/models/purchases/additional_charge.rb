# typed: strong
# frozen_string_literal: true

module DearInventory
  module Models
    class Purchases < DearInventory::Model
      class AdditionalCharge < DearInventory::Model
        extend T::Sig

        fields(
          Description: {
            name: :description,
            type: :String,
          },
          Price: {
            name: :price,
            type: :BigDecimal,
          },
          Quantity: {
            name: :quantity,
            type: :Float,
          },
          Discount: {
            name: :discount,
            type: :BigDecimal,
          },
          Tax: {
            name: :tax,
            type: :BigDecimal,
          },
          Total: {
            name: :total,
            type: :BigDecimal,
          },
          TaxRule: {
            name: :tax_rule,
            type: :String,
          }
        )
      end
    end
  end
end
