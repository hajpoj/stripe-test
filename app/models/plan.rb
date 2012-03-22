class Plan < ActiveRecord::Base
  has_many :subscriptions
  has_many :users, through: :subscriptions

  attr_accessible :name, :interval, :trial_period_days, :amount

end
