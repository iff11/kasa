module Api
  module V1
    class EmployeeResource < JSONAPI::Resource
      attributes :first_name, :last_name, :photo_url, :is_active, :first_name, :last_name, :photo_url

      has_many :visits

      filters :is_active
    end
  end
end
