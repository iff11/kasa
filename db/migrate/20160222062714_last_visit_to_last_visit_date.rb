class LastVisitToLastVisitDate < ActiveRecord::Migration
  def change
    add_column :customers, :last_visit_date, :datetime

    Customer.all.each do |customer|
      last_visit = customer.visits.all.order('updated_at DESC').limit(1).first
      unless last_visit.nil?
        customer.last_visit_date = last_visit.created_at
        customer.save!
        puts "#{customer.id} => #{customer.last_visit_date}"
      else
        puts "#{customer.id} has no last visit"
      end
    end
  end
end
