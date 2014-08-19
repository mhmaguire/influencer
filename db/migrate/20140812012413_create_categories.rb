class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
    	t.string :title
    	t.string :slug, unique: :true, index: true
      t.timestamps
    end
  end
end
