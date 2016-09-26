class Customer < ActiveRecord::Base
  acts_as_paranoid

  enum gender: [ :male, :female ]

  has_many :visits
end
