class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :birth, :phone, :mail, :note, :visits_count

  # belongs_to :last_visit
  # has_one :last_visit
end
