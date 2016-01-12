module Api
  module V1
    class StatusResource < JSONAPI::Resource
      attributes :name, :value
    end
  end 
end
