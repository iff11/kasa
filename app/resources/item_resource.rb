class ItemResource < JSONAPI::Resource
  attributes :id, :name, :bought, :sold, :unlimited, :barcode

  attribute :selling_price, :key => 'selling-price'
  attribute :warning_threshold, :key => 'warning-threshold'
  attribute :is_active, :key => 'is-active'

  has_many :sells
  has_many :supplies
end
