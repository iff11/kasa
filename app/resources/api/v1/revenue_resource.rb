module Api
  module V1
    class RevenueResource < ApplicationResource
      attributes :amount, :eet_fik, :eet_response

      has_one :visit
      has_one :entity
    end
  end
end
