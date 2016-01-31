module Api
  module V1
    class VisitResource < JSONAPI::Resource
      paginator :paged

      attributes :note, :completed, :price_with_tip, :received_amount, :updated_at

      has_one :customer
      has_one :employee

      has_many :sells

      filters :customer_id, :completed, :month, :year, :employee_id

      filter :month, apply: ->(records, value, _options) {
        records.where('EXTRACT( MONTH FROM visits.updated_at ) = ?', value)
      }
      filter :year, apply: ->(records, value, _options) {
        records.where('EXTRACT( YEAR FROM visits.updated_at ) = ?', value)
      }
    end
  end
end
