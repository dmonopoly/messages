class AddSubscriptionIdToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :subscription_id, :integer
  end

  def self.down
    remove_column :users, :subscription_id
  end
end
