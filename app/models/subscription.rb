class Subscription < ActiveRecord::Base
  belongs_to :user
  belongs_to :plan

  attr_accessible :user, :plan, :stripe_customer_id

end
