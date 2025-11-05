# frozen_string_literal: true

module DearInventory
  module Models
    class Sales < DearInventory::Model
      class ManualJournal < DearInventory::Model
        fields(
          Status: {
            name: :status,
            type: :String,
          },
          Lines: {
            name: :lines,
            type: :Array,
            model: DearInventory::Models::Sales::ManualJournalLine,
          }
        )
      end
    end
  end
end
