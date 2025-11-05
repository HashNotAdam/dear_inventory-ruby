# frozen_string_literal: true

module DearInventory
  module Models
    class Sales < DearInventory::Model
      class Fulfilments
        class PickPack < DearInventory::Model
          fields(
            Status: {
              name: :status,
              type: :String,
            },
            Lines: {
              name: :lines,
              type: :Array,
              model: DearInventory::Models::Sales::Fulfilments::PickPackLine,
            }
          )
        end
      end
    end
  end
end
