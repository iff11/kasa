class Customer < ActiveRecord::Base
  has_many :visits

  def name
    first_name + " " + last_name
  end
end
