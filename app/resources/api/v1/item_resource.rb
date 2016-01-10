module Api
  module V1
    class ItemResource < JSONAPI::Resource
      attributes :name, :bought, :sold, :unlimited, :barcode, :updated_at

      attribute :selling_price, :key => 'selling-price'
      attribute :warning_threshold, :key => 'warning-threshold'
      attribute :is_active, :key => 'is-active'

      has_many :sells
      has_many :supplies

      has_one :last_supply
    end
  end
end
