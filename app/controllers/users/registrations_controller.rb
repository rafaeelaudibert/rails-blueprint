# frozen_string_literal: true

# This is a Devise inherited class
#
# Class responsible for handling the User model Registration, this is
# new User instances creations
class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters

  def destroy
    super
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit(:first_name, :last_name, :email, :password)
    end

    devise_parameter_sanitizer.permit(:account_update) do |u|
      u.permit(:first_name, :last_name, :email, :password)
    end
  end

  def after_sign_up_path_for(_resource)
    flash[:success] = 'We have sent a confirmation email to your inbox. \
                       Verify your email address to get started.'
    root_path
  end

  def after_inactive_sign_up_path_for(_resource)
    flash[:success] = 'We have sent a confirmation email to your inbox. \
                       Verify your email address to get started.'
    root_path
  end
end
