class SellSerializer < ActiveModel::Serializer
  attributes :id, :count, :price, :item_id, :visit_id

  # has_one :item
  # has_one :visit
end
