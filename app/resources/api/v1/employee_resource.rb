module Api
  module V1
    class EmployeeResource < JSONAPI::Resource
      attributes :first_name, :last_name, :photo_url, :is_active, :first_name, :last_name, :photo_url, :current_share_sale, :current_share_service

      has_many :visits
      has_many :payslips
      has_one :current_payslip, class_name: "payslip"
      # has_one :current_payslip

      filters :is_active
    end
  end
end
