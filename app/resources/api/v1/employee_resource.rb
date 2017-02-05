module Api
  module V1
    class EmployeeResource < CompanyDependentResource
      attributes :first_name, :last_name, :photo_url, :is_active

      has_many :visits
      has_one :company

      filters :is_active
    end
  end
end
