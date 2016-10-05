class Employee < ActiveRecord::Base
  acts_as_paranoid

  has_many :visits
  has_many :payslips

  def current_share_sale
    month = Date.today.month
    year = Date.today.year

    self.visits.where('EXTRACT( YEAR FROM visits.updated_at ) = ? AND EXTRACT( MONTH FROM visits.updated_at ) = ?', year, month).sum(:employee_share_sale)
  end

  def current_share_service
    month = Date.today.month
    year = Date.today.year

    self.visits.where('EXTRACT( YEAR FROM visits.updated_at ) = ? AND EXTRACT( MONTH FROM visits.updated_at ) = ?', year, month).sum(:employee_share_service)
  end
end
