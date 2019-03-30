# frozen_string_literal: true

# Default Mailer class
# Every other Mailer must inherit from this class
class ApplicationMailer < ActionMailer::Base
  append_view_path Rails.root.join('app', 'views', 'mailers')
  default from: "#{ENV['APP_NAME']} <#{ENV['DEFAULT_EMAIL']}>"

  private

  def send_email(email, subject)
    mail(
      to: email,
      subject: subject
    )
  rescue StandardError => e
    raise StandardError, "Email error: #{e}"
  end
end
