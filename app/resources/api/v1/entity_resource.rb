module Api
  module V1
    class EntityResource < CompanyDependentResource
      attributes :name

      has_many :items
    end
  end
end
