# frozen_string_literal: true

module DearInventory
  module Models
    class Purchases < DearInventory::Model
      module Advanced
        class CreditNote < DearInventory::Models::Purchases::CreditNote
          fields(
            TaskID: {
              name: :task_id,
              type: :Guid,
            }
          )
        end
      end
    end
  end
end
