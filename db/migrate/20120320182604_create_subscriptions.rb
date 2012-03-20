class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.integer :user_id
      t.integer :plan_id
      t.integer :stripe_customer_id

      t.timestamps
    end
  end
end
