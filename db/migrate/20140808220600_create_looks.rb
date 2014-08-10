class CreateLooks < ActiveRecord::Migration
  def change
    create_table :looks do |t|
    	t.string :title
    	t.text :body
    	t.references :influencer, null: false
      t.timestamps
    end
    add_index :looks, :influencer_id
  end
end
