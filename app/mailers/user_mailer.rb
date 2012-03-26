class UserMailer < ActionMailer::Base
  default from: "Rishi <rishi@quickrake.com>"

  def user_charged_email
    mail( :to => "hajpoj@gmail.com",
          :subject => "Your creditcard has been charged")
  end

end
