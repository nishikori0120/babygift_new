class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.greeting.subject
  #
  def greeting
    @greeting = "Hi"

    mail to: "yu.nishikori@di-v.co.jp"
  end
end
