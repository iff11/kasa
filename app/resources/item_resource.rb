class ItemResource < JSONAPI::Resource
  attributes :id, :name, :bought, :sold, :unlimited, :barcode#, :last_supply

  attribute :selling_price, :key => 'selling-price'
  attribute :warning_threshold, :key => 'warning-threshold'
  attribute :is_active, :key => 'is-active'

  has_many :sells
  has_many :supplies

  # has_one :last_supply, class_name: 'Supply', foreign_key: 'last_supply'
  has_one :last_supply, class_name: 'Supply'
  #has_one :foobar, class_name: 'Supply', foreign_key: 'last_supply'

end
