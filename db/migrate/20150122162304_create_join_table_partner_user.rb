class CreateJoinTablePartnerUser < ActiveRecord::Migration
  def change
    create_join_table :users, :partners
  end
end
