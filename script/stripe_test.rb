require "stripe"
require '../config/initializers/stripe.rb'
customer = Stripe::Customer.retrieve("cus_vTm8ycPonNe1cx")
puts customer


