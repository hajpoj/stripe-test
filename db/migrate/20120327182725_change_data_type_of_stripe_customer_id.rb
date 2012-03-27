class ChangeDataTypeOfStripeCustomerId < ActiveRecord::Migration
  def up
    change_column :subscriptions, :stripe_customer_id, :string
  end

  def down
    change_column :subscriptions, :stripe_customer_id, :integer
  end
end
