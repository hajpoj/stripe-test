class WebhookController < ApplicationController
  protect_from_forgery :except => :stripe_receiver

  def stripe_receiver
    data_json = JSON.parse(request.body.read)
    puts "received data: #{data_json['type']}"

    UserMailer.user_charged_email.deliver

    render :nothing => true
  end
end