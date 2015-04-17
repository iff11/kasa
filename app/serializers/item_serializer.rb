class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :selling_price, :stock, :unlimited, :barcode, :actual_count

  has_many :sells
end
