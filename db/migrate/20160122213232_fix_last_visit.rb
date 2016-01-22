class FixLastVisit < ActiveRecord::Migration
  def change
    Customer.all.each do |customer|
      last_visit = customer.visits.all.order('updated_at DESC').limit(1).first
      unless last_visit.nil?
        last_visit_id = last_visit.id

        if customer.last_visit_id != last_visit_id
          puts "#{customer.id}: #{customer.last_visit_id} => #{last_visit_id}"
        else
          puts "#{customer.id}: OK"
        end

        customer.last_visit_id = last_visit_id
        customer.save!
      end
    end
  end
end
