class Customer < ActiveRecord::Base
  acts_as_paranoid

  has_many :visits
  # belongs_to :last_visit, class_name: "Visit", foreign_key: "last_visit", inverse_of: :last_customer

  # def visits_count
  #   visits.all.size
  # end
end
