class EmployeeResource < JSONAPI::Resource
  attributes :id, :first_name, :last_name, :photo_url

  attribute :first_name, :key => 'first-name'
  attribute :last_name, :key => 'last-name'
  attribute :photo_url, :key => 'photo-url'

end
