module Api
  module V1
    class CompanyResource < ApplicationResource
      attributes :name

      has_many :entities
    end
  end
end
