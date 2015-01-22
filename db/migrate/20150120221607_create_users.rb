class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :first_name
    	t.string :email
    	t.string :username
    	t.string :password_digest
    	t.integer :age
        t.string :gender
    	t.string :experience
    	t.text :image_url
        t.string :days_available
        t.string :hours_available

    	t.timestamps
    end
  end
end
