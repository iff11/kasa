module Api
  module V1
    class CashbookEntryResource < CompanyDependentResource
      attributes :amount, :kind, :touched_at, :note

      has_one :company
      has_one :visit
    end
  end
end
