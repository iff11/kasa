module Api
  module V1
    class EntityResource < CompanyDependentResource
      attributes :name, :invoice_header

      has_many :items
    end
  end
end
