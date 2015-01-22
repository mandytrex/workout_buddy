class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.integer :coordinator_id
    	t.string :name

    	t.timestamps
    end
  end
end
