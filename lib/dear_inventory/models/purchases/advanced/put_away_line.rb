# frozen_string_literal: true

module DearInventory
  module Models
    class Purchases < DearInventory::Model
      module Advanced
        class PutAwayLine < StockLine
          fields(
            CardID: {
              name: :card_id,
              type: :CardID,
            }
          )
        end
      end
    end
  end
end
