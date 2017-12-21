# Load the Rails application.
require_relative 'application'

# Sendgrid SMTP integration
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :user_name => 'apikey',
  :password => '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',
  :domain => 'blocipedia.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}

# Initialize the Rails application.
Rails.application.initialize!
