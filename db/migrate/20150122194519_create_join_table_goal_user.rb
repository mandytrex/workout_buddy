class CreateJoinTableGoalUser < ActiveRecord::Migration
  def change
    create_join_table :goals, :users
  end
end
