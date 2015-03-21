class VisitSerializer < ActiveModel::Serializer
  embed :ids

  attributes :id, :note, :completed, :date, :total_price

  has_one :customer
  has_one :employee
  has_many :sells

  def date
    object.created_at
  end
end
