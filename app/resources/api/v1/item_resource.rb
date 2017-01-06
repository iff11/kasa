module Api
  module V1
    class ItemResource < CompanyDependentResource
      attributes :name, :bought, :sold, :unlimited, :barcode, :is_service, :is_active, :selling_price, :warning_threshold, :updated_at

      has_many :sells
      has_many :supplies

      has_one :last_supply
    end
  end
end
