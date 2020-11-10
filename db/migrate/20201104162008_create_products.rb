class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
    	t.string :name
    	t.string :material_code
    	t.string :category_code
    	t.boolean :status, default: false

      t.timestamps
    end
  end
end
