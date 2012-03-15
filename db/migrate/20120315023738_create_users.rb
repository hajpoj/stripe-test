class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :stripe_token

      t.timestamps
    end
  end
end
