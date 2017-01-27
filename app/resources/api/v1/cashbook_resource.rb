module Api
  module V1
    class CashbookResource < ApplicationResource
      attributes :date, :paid_by_card, :paid_in_cash

      has_one :company
      has_one :visit
    end
  end
end
