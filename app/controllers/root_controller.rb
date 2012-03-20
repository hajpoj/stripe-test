class RootController < ApplicationController
  def index
  end

  def form
  end

  def submit
    token = params[:stripeToken]
    puts "stripeToken: #{token}"
    customer_id = Stripe::Customer.create(card: token, plan: 1, email: "testUser1@quickrake.com" )
    current_user = User.find(1)
    current_user.stripe_token = customer_id
    current_user.save
    render text: "Form was submitted"
  end
end