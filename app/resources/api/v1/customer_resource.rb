module Api
  module V1
    class CustomerResource < BaseUnderCompanyResource
      attributes :birth, :phone, :mail, :note, :last_visit_date, :first_name, :last_name, :visits_count, :gender

      has_many :visits
    end
  end
end
