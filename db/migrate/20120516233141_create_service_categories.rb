class CreateServiceCategories < ActiveRecord::Migration
  def change
    create_table :service_categories do |t|
   		t.references :service, null: false
			t.references :category, null: false
      t.timestamps
    end
  end
end
