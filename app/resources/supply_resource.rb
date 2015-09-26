class SupplyResource < JSONAPI::Resource
  attributes :id, :purchase_price, :quantity, :vat, :created_at, :updated_at

  has_one :item
end
