module Api
  module V1
    class CashbookResource < ApplicationResource
      attributes :date, :paid_by_card, :paid_in_cash

      has_one :company
    end
  end
end
