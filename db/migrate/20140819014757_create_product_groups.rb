class CreateProductGroups < ActiveRecord::Migration
  def change
    create_table :product_groups do |t|
    	t.string :name
    	t.references :look
      t.timestamps
    end
    add_index :product_groups, :look_id
  end
end
