class VisitResource < JSONAPI::Resource
  attributes :note, :completed, :price_with_tip, :received_amount, :updated_at

  has_one :customer
  has_one :employee

  has_many :sells
end
