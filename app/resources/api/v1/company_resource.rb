module Api
  module V1
    class CompanyResource < ApplicationResource
      attributes :name, :is_invoice_printing_active, :invoice_header, :invoice_logo

      has_many :entities
    end
  end
end
