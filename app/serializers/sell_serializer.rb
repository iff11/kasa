class SellSerializer < ActiveModel::Serializer
  attributes :id, :count, :price

  has_one :item
end
