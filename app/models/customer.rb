class Customer < ActiveRecord::Base
  acts_as_paranoid

  has_many :visits

  belongs_to :last_visit, class_name: 'Visit'
  # belongs_to :last_visit, class_name: "Visit", foreign_key: "last_visit", inverse_of: :last_customer

  # def visits_count
  #   visits.all.size
  # end

  def fix_last_visit
    last_visit = self.visits.all.order('updated_at DESC').limit(1).first
    unless last_visit.nil?
      last_visit_id = last_visit.id
      self.last_visit = last_visit_id
      self.save!
    end
  end
end
