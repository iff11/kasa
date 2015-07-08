class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :birth, :phone, :mail, :note

  attribute :first_name, :key => 'first-name'
  attribute :last_name, :key => 'last-name'
  attribute :visits_count, :key => 'visits-count'
  attribute :last_visit, :key => 'last-visit'

  has_many :visits

  # belongs_to :last_visit
  # has_one :last_visit
end
