class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :first_name
    	t.string :email
    	t.string :username
      t.string :phone
    	t.string :password_digest
    	t.integer :age
      t.string :gender
    	t.string :experience
    	t.text :avatar


      t.references :partner, index: true

    	t.timestamps
    end

    create_table :partner_requests do |t|
      t.integer :requester_id
      t.integer :receiver_id
      t.text :message
      t.timestamps
    end

  end
end
