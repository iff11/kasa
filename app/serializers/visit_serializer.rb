class VisitSerializer < ActiveModel::Serializer
  embed :ids

  attributes :id, :note, :completed, :date, :total_price, :price_with_tip, :received_amount

  has_one :customer
  has_one :employee
  has_many :sells

  def date
    object.created_at
  end
end
