class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
    	t.string :goal_name
        t.string :theme
    	t.boolean :achieved
    	t.string :end_date
    	t.text :image_url

    	t.timestamps
    end
  end
end
