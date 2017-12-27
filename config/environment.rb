# Load the Rails application.
require_relative 'application'

# Sendgrid SMTP integration
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :user_name => 'apikey',
  :password => secret_key_sendgrid,
  :domain => 'blocipedia.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}

# Initialize the Rails application.
Rails.application.initialize!
