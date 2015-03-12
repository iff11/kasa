class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :default_price, :stock, :unlimited, :barcode
end
