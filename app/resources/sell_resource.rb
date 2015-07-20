class SellResource < JSONAPI::Resource
  attributes :id, :count, :price, :item_id, :visit_id
end
