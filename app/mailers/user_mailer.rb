# frozen_string_literal: true

# UserMailer class responsible for handling all the e-mail
# sending related with the User model
class UserMailer < ApplicationMailer
  def welcome(user)
    @user = user

    send_email(user.email, "Welcome to #{ENV['APP_NAME']}!")
  end
end
