class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
    	t.integer :coordinator_id
    	t.string :name
    	t.text :image_url


    	t.timestamps
    end
  end
end
