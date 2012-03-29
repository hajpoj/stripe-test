require 'stripe'
require '../config/initializers/stripe.rb'
plan = Stripe::Plan.retrieve("1")
plan.name = "Basic2"
plan.save
puts plan