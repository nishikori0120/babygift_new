class ApplicationMailer < ActionMailer::Base
  default from: 'babyGift'
  reply_to: Rails.application.credentials.gmail[:user_name] #差出人のメールアドレス
  layout 'mailer'
end
