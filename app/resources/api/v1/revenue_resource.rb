module Api
  module V1
    class RevenueResource < ApplicationResource
      attributes :amount, :fik, :response

      has_one :visit
      has_one :entity
    end
  end
end
