# frozen_string_literal: true

module DearInventory
  class Parameters
    module Sale
      class Delete < DearInventory::Parameters
        fields(
          id: {
            property: :ID,
            type: :String,
            required: true,
          },
          void: {
            property: :Void,
            type: :Boolean,
            required: false,
          }
        )
      end
    end
  end
end
