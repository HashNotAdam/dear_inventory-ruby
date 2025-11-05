# frozen_string_literal: true

module DearInventory
  class Resource
    extend DearInventory::IsASubclass

    def request(action, model:, endpoint: nil, params: {})
      request = DearInventory::Models::Request.new(
        action: action,
        model: model,
        params: DearInventory::Parameters.convert(self.class, endpoint, params),
        uri: resource_uri(endpoint)
      )
      DearInventory::Request.(request)
    end

    private

    URI_BASE = "https://inventory.dearsystems.com/ExternalApi/v2"
    private_constant :URI_BASE
    def resource_uri(_endpoint)
      resource = self.class.name.split("::").last
      camel_case = Strings::Urlize.(resource)

      "#{URI_BASE}/#{camel_case}"
    end
  end
end
