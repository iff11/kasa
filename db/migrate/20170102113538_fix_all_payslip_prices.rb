class FixAllPayslipPrices < ActiveRecord::Migration
  def change
    # Force regenerate all payslips
    Visit.all.each do |visit|
      visit.price = visit.price + 1
      visit.save!
      visit.price = visit.price - 1
      visit.save!
    end
  end
end
