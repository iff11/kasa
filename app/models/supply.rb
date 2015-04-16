class Supply < ActiveRecord::Base
  acts_as_paranoid

  belongs_to :item
end
