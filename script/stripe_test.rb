require "stripe"
require "json"
Stripe.api_key = "rc5Dv9CCwiCNk60jnbbXlw6Bsydg9Rj9"
customer = Stripe::Customer.retrieve("cus_vTm8ycPonNe1cx")
puts customer

