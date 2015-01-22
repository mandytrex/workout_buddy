class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
    	t.string :fitness_goal
        t.string :theme
    	t.boolean :achieved
    	t.string :end_date
    	t.text :image_url
    	t.boolean :public
    	t.references :partner

    	t.timestamps
    end
  end
end
