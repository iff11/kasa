module Api
  module V1
    class CashbookEntryResource < CompanyDependentResource
      attributes :amount, :kind, :when, :note

      has_one :company
      has_one :visit
    end
  end
end
