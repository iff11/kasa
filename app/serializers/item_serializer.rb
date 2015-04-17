class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :selling_price, :bought, :sold, :unlimited, :barcode

  has_many :sells
  has_many :supplies
end
