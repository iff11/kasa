class AddEntityIdToItems < ActiveRecord::Migration
  def change
    add_reference :items, :entity, index: true

    Company.all.each do |company|
      entity = Entity.new
      entity.name = 'Moje firma'
      entity.company = company

      entity.save!

      company.items.update_all entity_id: entity.id
    end
  end
end
