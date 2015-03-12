class VisitSerializer < ActiveModel::Serializer
  embed :ids

  attributes :id, :note, :completed, :date

  has_one :customer
  has_many :sells

  def date
    object.created_at
  end
end
