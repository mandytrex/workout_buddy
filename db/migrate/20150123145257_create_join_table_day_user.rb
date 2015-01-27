class CreateJoinTableDayUser < ActiveRecord::Migration
  def change
    create_join_table :days, :users
  end
end
