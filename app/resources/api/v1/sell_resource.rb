module Api
  module V1
    class SellResource < JSONAPI::Resource
      attributes :count, :price, :updated_at

      has_one :item
      has_one :visit
    end
  end 
end