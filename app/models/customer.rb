class Customer < ActiveRecord::Base
  acts_as_paranoid

  has_many :visits

  # def visits_count
  #   visits.all.size
  # end
end
