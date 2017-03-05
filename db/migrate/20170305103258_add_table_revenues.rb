class AddTableRevenues < ActiveRecord::Migration[5.0]
  def change
    create_table :revenues do |t|
      t.decimal :amount, null: false, default: 0.0
      t.text :response, null: false, default: ''
      t.string :fik, null: false, default: ''

      t.timestamps null: false
    end

    add_reference :revenues, :visit, index: true, null: false
    add_reference :revenues, :entity, index: true, null: false
    add_index(:revenues, [:visit_id, :entity_id], unique: true, name: 'by_visit_entity')
  end
end
