require "stripe"
require '../config/initializers/stripe.rb'
customer = Stripe::Customer.retrieve('cus_FcMjzFYcu8Vt1e')
sub = customer.subscription

puts "Subscription before Update: "
puts sub
puts "Canceled at: #{Time.at(sub.canceled_at)}"
puts "Ended at at: #{Time.at(sub.ended_at)}"
puts "Current period End at: #{Time.at(sub.current_period_end)}"    #What to use this date as the actual end date of the cancelation
puts "start #{Time.at(sub.start)}"


newSub = customer.update_subscription(plan: 'basic')
puts "Subscription after Update: "
puts newSub

customer2 = Stripe::Customer.retrieve('cus_HSG6di0NfquNyt')
sub = customer2.subscription
puts sub