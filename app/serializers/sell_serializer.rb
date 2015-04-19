class SellSerializer < ActiveModel::Serializer
  attributes :id, :count, :price

  # has_one :item
  # has_one :visit
end
