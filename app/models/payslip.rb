class Payslip < ActiveRecord::Base
  belongs_to :employee
  belongs_to :period
  has_many :visits
end
