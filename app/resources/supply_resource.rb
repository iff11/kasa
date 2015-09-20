class SupplyResource < JSONAPI::Resource
  attributes :id, :purchase_price, :quantity, :vat, :created_at, :updated_at

  has_one :item
  # has_many :last_supply_for, class_name: 'Item', foreign_key: 'last_supply'

end
