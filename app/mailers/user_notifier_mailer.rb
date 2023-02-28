class UserNotifierMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_notifier_mailer.signup_alert.subject
  #
  def signup_alert(user_data)
    @user_name = user_data.first_name
    mail(to: user_data.email, subject: "Your account has been created!")
  end

  def forgot_password_alert(data)
    @user_name = data.first_name
    mail(to: data.email, subject: "Your Account password has been reset!")
  end

end
