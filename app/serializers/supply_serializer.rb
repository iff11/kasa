class SupplySerializer < ActiveModel::Serializer
  attributes :id, :purchase_price, :quantity, :item_id, :vat
end
