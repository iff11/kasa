module Admin
  class StatusResource < JSONAPI::Resource
    attributes :name, :value
  end
end
