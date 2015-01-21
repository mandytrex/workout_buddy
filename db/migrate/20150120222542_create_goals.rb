class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
    	t.text :goals
    	t.boolean :achieved
    	t.string :end_date
    	t.text :image_url
    	t.boolean :public
    	t.references :group

    	t.timestamps
    end
  end
end
