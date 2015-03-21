class Customer < ActiveRecord::Base
  has_many :visits

  def visits_count
    visits.all.size
  end
end
