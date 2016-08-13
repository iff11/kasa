module Api
  module V1
    class EmployeeResource < JSONAPI::Resource
      attributes :first_name, :last_name, :photo_url, :is_active, :first_name, :last_name, :photo_url, :current_share_sale, :current_share_service

      has_many :visits

      filters :is_active
    end
  end
end
