class SupplyResource < JSONAPI::Resource
  attributes :id, :purchase_price, :quantity, :item_id, :vat, :created_at
end
