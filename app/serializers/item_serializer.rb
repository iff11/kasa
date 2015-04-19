class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :selling_price, :bought, :sold, :unlimited, :barcode, :warning_threshold

  has_many :sells
  has_many :supplies
end
