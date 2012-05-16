class CreateEntities < ActiveRecord::Migration
  def change
    create_table :entities do |t|
      t.string :name, null: false, limit: 75
      t.integer :profile, null: false 

      t.timestamps
    end
  end
end
