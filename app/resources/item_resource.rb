class ItemResource < JSONAPI::Resource
  attributes :id, :name, :bought, :sold, :unlimited, :barcode

  attribute :selling_price, :key => 'selling-price'
  attribute :warning_threshold, :key => 'warning-threshold'
  # attribute :last_supply, :key => 'last-supply'
  attribute :is_active, :key => 'is-active'

  # has_one :last_supply, class_name: 'Supply', foreign_key: 'last_supply'

  has_many :sells
  has_many :supplies
end
