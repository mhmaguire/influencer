class CreateLooks < ActiveRecord::Migration
  def change
    create_table :looks do |t|
    	t.string :title
    	t.string :slug, unique: true, index: true
    	t.text :body
    	t.references :influencer, null: false
    	t.references :category
      t.timestamps
    end
    add_index :looks, :influencer_id
    add_index :looks, :category_id
  end
end
