class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :purchase_price, :selling_price, :stock, :unlimited, :barcode
end
