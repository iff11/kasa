class PopulatePayslips < ActiveRecord::Migration
  def change
    add_column :visits, :payslip_id, :integer, null: true

    # Fix payslip_id.
    # Also as side effect, this will autogenerate historical periods and payslips.
    Visit.all.each do |visit|
      day = visit.created_at.to_date
      period = Period.where(start_date: day).first_or_create
      payslip = Payslip.where(period_id: period, employee_id: visit.employee_id).first_or_create

      visit.payslip = payslip
      visit.save!
    end

    # Set some period as active
    lastPeriod = Period.last
    lastPeriod.is_active = true
    lastPeriod.save!

    # change_column_default :visits, :payslip_id, nil
  end
end
