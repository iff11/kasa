class Revenue < ApplicationRecord
  belongs_to :visits
  belongs_to :entity

  serialize :eet_response, JSON
end
