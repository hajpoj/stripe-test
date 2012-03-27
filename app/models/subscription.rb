class Subscription < ActiveRecord::Base
  belongs_to :user
  belongs_to :plan

  attr_accessible :user, :plan, :stripe_customer_id, :trial_end_date

  validates :user_id, :uniqueness => true
  validates_presence_of :user

  validates :stripe_customer_id, :uniqueness => true

end
