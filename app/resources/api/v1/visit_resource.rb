module Api
  module V1
    class VisitResource < JSONAPI::Resource
      paginator :paged

      attributes :note, :completed, :price_with_tip, :received_amount, :updated_at

      has_one :customer
      has_one :employee

      has_many :sells

      filters :customer_id, :completed
    end
  end
end
