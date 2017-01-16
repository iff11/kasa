# ActiveRecord::Base.logger = Logger.new(STDOUT)

results = []

Company.find(2).entities.all.each do |entity|
  sum = Item.where(entity_id: entity.id).where(unlimited: false).joins(:last_supply).sum('(bought - sold) * purchase_price')
  # sum = Item.where(entity_id: entity.id).joins(:supplies).sum('purchase_price * quantity')
  # sum = Item.where(entity_id: entity.id).joins(:supplies).length
  results << { entity_name: entity.name, sum: sum }
end

pp results
