# frozen_string_literal: true

# This is a Devise inherited class
#
# Class responsible for handling the User model Confirmation
# after a new User instance has been created
class Users::ConfirmationsController < Devise::ConfirmationsController
  private

  def after_confirmation_path_for(_resource_name, resource)
    sign_in(resource)
    root_path
  end
end
