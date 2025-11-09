# frozen_string_literal: true

module DearInventory
  class Parameters
    module Customer
      class Create < DearInventory::Parameters
        fields(
          account_receivable: {
            property: :AccountReceivable,
            type: :String,
            required: true,
          },
          additional_attribute_1: {
            property: :AdditionalAttribute1,
            type: :String,
            required: false,
          },
          additional_attribute_10: {
            property: :AdditionalAttribute10,
            type: :String,
            required: false,
          },
          additional_attribute_2: {
            property: :AdditionalAttribute2,
            type: :String,
            required: false,
          },
          additional_attribute_3: {
            property: :AdditionalAttribute3,
            type: :String,
            required: false,
          },
          additional_attribute_4: {
            property: :AdditionalAttribute4,
            type: :String,
            required: false,
          },
          additional_attribute_5: {
            property: :AdditionalAttribute5,
            type: :String,
            required: false,
          },
          additional_attribute_6: {
            property: :AdditionalAttribute6,
            type: :String,
            required: false,
          },
          additional_attribute_7: {
            property: :AdditionalAttribute7,
            type: :String,
            required: false,
          },
          additional_attribute_8: {
            property: :AdditionalAttribute8,
            type: :String,
            required: false,
          },
          additional_attribute_9: {
            property: :AdditionalAttribute9,
            type: :String,
            required: false,
          },
          addresses: {
            property: :Addresses,
            type: :Array,
            model: DearInventory::Models::Customers::Address,
            required: false,
          },
          attribute_set: {
            property: :AttributeSet,
            type: :String,
            required: false,
          },
          contacts: {
            property: :Contacts,
            type: :Array,
            model: DearInventory::Models::Customers::Contact,
            required: false,
          },
          carrier: {
            property: :Carrier,
            type: :String,
            required: false,
          },
          comments: {
            property: :Comments,
            type: :String,
            required: false,
          },
          credit_limit: {
            property: :CreditLimit,
            type: :Integer,
            required: false,
          },
          currency: {
            property: :Currency,
            type: :String,
            required: true,
          },
          discount: {
            property: :Discount,
            type: :Integer,
            required: false,
          },
          display_name: {
            property: :DisplayName,
            type: :String,
            required: false,
          },
          is_on_credit_hold: {
            property: :IsOnCreditHold,
            type: :Boolean,
            required: false,
          },
          location: {
            property: :Location,
            type: :String,
            required: false,
          },
          name: {
            property: :Name,
            type: :String,
            required: true,
          },
          payment_term: {
            property: :PaymentTerm,
            type: :String,
            required: true,
          },
          price_tier: {
            property: :PriceTier,
            type: :String,
            required: false,
          },
          revenue_account: {
            property: :RevenueAccount,
            type: :String,
            required: true,
          },
          sales_representative: {
            property: :SalesRepresentative,
            type: :String,
            required: false,
          },
          status: {
            property: :Status,
            type: :Enum,
            values: %w[Active Deprecated],
            required: true,
          },
          tags: {
            property: :Tags,
            type: :String,
            required: false,
          },
          tax_number: {
            property: :TaxNumber,
            type: :Integer,
            required: false,
          },
          tax_rule: {
            property: :TaxRule,
            type: :String,
            required: true,
          }
        )
      end
    end
  end
end
