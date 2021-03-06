# typed: strong
# frozen_string_literal: true

module DearInventory
  module Models
    class Purchase < DearInventory::Model
      extend T::Sig

      fields(
        ID: {
          name: :id,
          type: :Guid,
        },
        SupplierID: {
          name: :supplier_id,
          type: :Guid,
        },
        Supplier: {
          name: :supplier,
          type: :String,
        },
        Contact: {
          name: :contact,
          type: :String,
        },
        Phone: {
          name: :phone,
          type: :String,
        },
        InventoryAccount: {
          name: :inventory_account,
          type: :String,
        },
        BlindReceipt: {
          name: :blind_receipt,
          type: :Boolean,
        },
        Approach: {
          name: :approach,
          type: :String,
        },
        BillingAddress: {
          name: :billing_address,
          type: :Hash,
          model: DearInventory::Models::Address,
        },
        ShippingAddress: {
          name: :shipping_address,
          type: :Hash,
          model: DearInventory::Models::Address,
        },
        BaseCurrency: {
          name: :base_currency,
          type: :String,
        },
        SupplierCurrency: {
          name: :supplier_currency,
          type: :String,
        },
        TaxRule: {
          name: :tax_rule,
          type: :String,
        },
        TaxCalculation: {
          name: :tax_calculation,
          type: :String,
        },
        Terms: {
          name: :terms,
          type: :String,
        },
        RequiredBy: {
          name: :required_by,
          type: :Date,
        },
        Location: {
          name: :location,
          type: :String,
        },
        Note: {
          name: :note,
          type: :String,
        },
        OrderNumber: {
          name: :order_number,
          type: :String,
        },
        OrderDate: {
          name: :order_date,
          type: :Date,
        },
        Status: {
          name: :status,
          type: :String,
        },
        RelatedDropShipSaleTask: {
          name: :related_drop_ship_sale_task,
          type: :Guid,
        },
        CurrencyRate: {
          name: :currency_rate,
          type: :Decimal,
        },
        LastUpdatedDate: {
          name: :last_updated_date,
          type: :DateTime,
        },
        Order: {
          name: :order,
          type: :Hash,
          model: DearInventory::Models::Purchases::Order,
        },
        StockReceived: {
          name: :stock_received,
          type: :Hash,
          model: DearInventory::Models::Purchases::Stock,
        },
        Invoice: {
          name: :invoice,
          type: :Hash,
          model: DearInventory::Models::Purchases::Invoice,
        },
        CreditNote: {
          name: :credit_note,
          type: :Hash,
          model: DearInventory::Models::Purchases::CreditNote,
        },
        ManualJournals: {
          name: :manual_journals,
          type: :Hash,
          model: DearInventory::Models::Purchases::ManualJournal,
        },
        AdditionalAttributes: {
          name: :additional_attributes,
          type: :Hash,
          model: DearInventory::Models::AdditionalAttributes,
        },
        Attachments: {
          name: :attachments,
          type: :Array,
          model: DearInventory::Models::Attachment,
        },
        InventoryMovements: {
          name: :inventory_movements,
          type: :Array,
          model: DearInventory::Models::Purchases::InventoryMovement,
        }
      )
    end
  end
end
