class PopulateCashbookEntries < ActiveRecord::Migration
  def change
    Visit.all.each do |visit|
      if visit.paid_in_cash != 0
        ce = CashbookEntry.new
        ce.amount = visit.paid_in_cash
        ce.kind = CashbookEntry.kinds[:visit]
        ce.touched_at = visit.created_at
        ce.company = visit.employee.company
        ce.visit = visit
        ce.save!
      end
    end
  end
end
