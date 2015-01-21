class CreateJoinTableUserActivity < ActiveRecord::Migration
  def change
    create_join_table :users, :activities
  end
end
