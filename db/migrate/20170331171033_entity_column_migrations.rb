class EntityColumnMigrations < ActiveRecord::Migration
  def change
    Entity.all.each do |entity|
      src = entity.invoice_header
      if src
        puts src
        captures =
        match = src.match(/.*IČO?:? (\d*).*(spisová[^,]*),(.*)/)
        if match
          captures = match.captures
          entity.headquarters = captures[2]
          entity.identification_number = captures[0]
          entity.business_register = captures[1]

          # entity.headquarters = src.match(/.*spisová[^,]*,(.*)/).captures[0]
          # entity.identification_number = src.match(/.*IČO?:? (\d*).*/).captures[0]
          # entity.business_register = src.match(/.*(spisová[^,]*),.*/).captures[0]
        else
          match = src.match(/.*IČO?:? (\d*)/)
          captures = match.captures
          entity.identification_number = captures[0]
        end
      end
      entity.save!
    end
  end
end
