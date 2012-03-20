class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :name
      t.string :interval
      t.integer :trial_period_days
      t.integer :amount

      t.timestamps
    end
  end
end
