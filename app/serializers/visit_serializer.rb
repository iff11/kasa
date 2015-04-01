class VisitSerializer < ActiveModel::Serializer
  attributes :id, :note, :completed, :date, :total_price, :price_with_tip, :received_amount, :customer_id, :employee_id

  #, :links

  # has_one :customer
  # has_one :employee
  has_many :sells, embed_in_root: false

  # def links
  #   { sells: sells_path(id) }
  # end

  def date
    object.created_at
  end
end
