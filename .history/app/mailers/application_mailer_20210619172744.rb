class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
  helper_method :current_user
end
