class Cashbook < ActiveRecord::Base
  belongs_to :company
  belongs_to :visit
end
