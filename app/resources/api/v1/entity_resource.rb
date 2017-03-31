module Api
  module V1
    class EntityResource < CompanyDependentResource
      attributes :name, :invoice_header, :vatid, :premisesid, :registerid, :send_eet, :headquarters, :identification_number, :business_register

      has_many :items
      has_many :revenues
    end
  end
end
