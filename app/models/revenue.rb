class Revenue < ApplicationRecord
  belongs_to :visits
  belongs_to :entity
end
