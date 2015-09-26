class SellResource < JSONAPI::Resource
  attributes :id, :count, :price

  has_one :item
  has_one :visit
end
