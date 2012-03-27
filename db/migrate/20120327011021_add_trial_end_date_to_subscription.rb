class AddTrialEndDateToSubscription < ActiveRecord::Migration
  def change
    add_column :subscriptions, :trial_end_date, :datetime
  end
end
