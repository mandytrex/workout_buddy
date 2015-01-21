class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
    	t.integer :coordinator_id
    	t.string :theme
    	t.text :image_url


    	t.timestamps
    end
    # HOW DO I SET UP RELATIONSHIP BETWEEN COORD-ID AND USER ID????
    # add_index :groups, :user_id
  end
end
