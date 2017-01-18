module Api
  module V1
    class CustomerResource < CompanyDependentResource
      attributes :birth, :phone, :mail, :note, :last_visit_date, :first_name, :last_name, :visits_count, :gender, :is_approved

      has_many :visits
    end
  end
end
