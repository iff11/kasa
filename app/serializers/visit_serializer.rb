class VisitSerializer < ActiveModel::Serializer
  attributes :id, :note, :completed, :date, :price_with_tip, :received_amount, :customer_id, :employee_id

  has_many :sells

  # url :sells

  def date
    object.created_at
  end
end
