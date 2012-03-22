class RootController < ApplicationController
  def index
  end

  def form
    @email = current_user.email
  end

  def submit
    token = params[:stripeToken]
    plan_id = params[:plan_id]
    current_plan = Plan.find(plan_id)

    email = current_user.email

    if current_plan.nil?
      render text: "invaid planID"
    end

    unless current_user.subscription.nil?
      render text: "this user already has a subscription"
      return
    end

    customer = Stripe::Customer.create(card: token, plan: plan_id, email: email)
    subscription = Subscription.new(user: current_user, plan: current_plan, stripe_customer_id: customer.id )
    if subscription.save
      render text: "Subscription was created. Email: #{current_user.email}, Plan: #{current_plan.name}, stripe_id: #{customer.id}"
    else
      render text: "Subscription NOTTTT created"
    end

  end
end

=begin
question, where should i get the plan information
should the user submit the plan ID?
  - will be more extendable.
  - would have to check to make sure that it is a valid plan.
=end
