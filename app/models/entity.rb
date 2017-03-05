class Entity < ActiveRecord::Base
  belongs_to :company
  has_many :items
  has_many :sells
  has_many :revenues
end
