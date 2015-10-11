class SellResource < JSONAPI::Resource
  attributes :count, :price

  has_one :item
  has_one :visit
end
