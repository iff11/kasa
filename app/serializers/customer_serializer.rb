class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :birth, :phone, :mail, :note, :visits_size

  def visits_size
    object.visits.size
  end
end
