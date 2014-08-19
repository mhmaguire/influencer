class CreateProductGroupItems < ActiveRecord::Migration
  def change
    create_table :product_group_items do |t|
    	t.references :group, :product
      t.timestamps
    end
    add_index :product_group_items, :group_id
    add_index :product_group_items, :product_id
  end
end
