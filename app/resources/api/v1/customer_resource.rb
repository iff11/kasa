module Api
  module V1
    class CustomerResource < JSONAPI::Resource
      attributes :birth, :phone, :mail, :note

      attribute :first_name, :key => 'first-name'
      attribute :last_name, :key => 'last-name'
      attribute :visits_count, :key => 'visits-count'
      # attribute :last_visit, :key => 'last-visit'

      has_many :visits

      has_one :last_visit
    end
  end
end