class UserMailer < ActionMailer::Base
  default from: "admin@gingerbreadman.com"
  #welcome email!
  #layout "email_template"

  def welcome(user)
    @user = User.find(user)
    mail(to: @user.email, subject: "Hey #{@user.first_name}, Schiggetty Schwats up guiy! ")
  end
end
