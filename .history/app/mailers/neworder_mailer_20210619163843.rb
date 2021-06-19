class NeworderMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.neworder_mailer.send_mail.subject
  #
  def send_mail
    @greeting = "Hi"

    mail to: "yu.nishikori@di-v.co.jp"
    cc: "nisikori0120@i.softbank.jp"
    subject: ""
  end
end
