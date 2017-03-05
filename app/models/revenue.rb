class Revenue < ActiveRecord::Base
  belongs_to :visits
  belongs_to :entity
end
