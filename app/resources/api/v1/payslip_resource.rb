module Api
  module V1
    class PayslipResource < JSONAPI::Resource
      attributes :share_sale, :share_service

      has_one :employee
      has_one :period
    end
  end
end
