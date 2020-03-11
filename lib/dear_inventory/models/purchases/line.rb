# typed: strong
# frozen_string_literal: true

module DearInventory
  module Models
    module Purchases
      class Line < DearInventory::Model
        extend T::Sig

        fields(
          ProductID: {
            name: :product_id,
            type: :Guid,
          },
          SKU: {
            name: :sku,
            type: :String,
          },
          Name: {
            name: :name,
            type: :String,
          },
          Quantity: {
            name: :quantity,
            type: :BigDecimal,
          },
          Price: {
            name: :price,
            type: :BigDecimal,
          },
          Discount: {
            name: :discount,
            type: :BigDecimal,
          },
          Tax: {
            name: :tax,
            type: :BigDecimal,
          },
          TaxRule: {
            name: :tax_rule,
            type: :String,
          },
          SupplierSKU: {
            name: :supplier_sku,
            type: :String,
          },
          Comment: {
            name: :comment,
            type: :String,
          },
          Total: {
            name: :total,
            type: :BigDecimal,
          }
        )
      end
    end
  end
end