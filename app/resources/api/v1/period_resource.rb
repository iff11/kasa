module Api
  module V1
    class PeriodResource < JSONAPI::Resource
      attributes :is_active, :start_date

      has_many :payslips
    end
  end
end
