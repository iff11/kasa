# ActiveRecord::Base.logger = Logger.new(STDOUT)

results = []

Company.find(2).entities.all.each do |entity|
  sum = Item.where(entity_id: entity.id).joins(:supplies).sum('purchase_price * quantity')
  results << { entity_name: entity.name, sum: sum }
end

pp results
