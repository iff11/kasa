class VisitResource < JSONAPI::Resource
  attributes :id, :note, :completed, :price_with_tip, :received_amount, :customer_id, :employee_id

  has_many :sells
end
