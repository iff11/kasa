class Visit < ActiveRecord::Base
  acts_as_paranoid

  belongs_to :customer, counter_cache: true
  belongs_to :employee
  has_many :sells

  # before_save :update_counter_cache

  # scope :opened, -> { where(completed: false) }

  def total_price
    sells.sum("count * price")
  end

  # private
  #   def update_counter_cache
  #     visitsCount = Visit.all.where(customer_id: self.customer_id).size
  #     self.customer.visits_count = visitsCount
  #     self.customer.save!
  #   end
end
