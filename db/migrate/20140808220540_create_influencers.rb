class CreateInfluencers < ActiveRecord::Migration
  def change
    create_table :influencers do |t|
    	t.string :name

      t.timestamps
    end
  end
end
