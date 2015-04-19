class VisitSerializer < ActiveModel::Serializer
  attributes :id, :note, :completed, :date, :price_with_tip, :received_amount

  has_one :customer
  has_one :employee
  has_many :sells

  def date
    object.created_at
  end
end
