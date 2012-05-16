class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name, limit: 75, null: false
      t.text :description
      t.decimal :price, precision: 14, scale: 2, null: false

      t.timestamps
    end
  end
end
