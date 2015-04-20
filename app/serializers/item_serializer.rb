class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :selling_price, :bought, :sold, :unlimited, :barcode, :warning_threshold, :last_supply

  has_many :sells
  has_many :supplies
  # belongs_to :last_supply
end
