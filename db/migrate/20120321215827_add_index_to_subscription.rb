class AddIndexToSubscription < ActiveRecord::Migration
  def change
    add_index :subscriptions, :user_id, :unique => true
    add_index :subscriptions, :stripe_customer_id, :unique => true
  end
end
