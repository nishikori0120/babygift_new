class NeworderMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.neworder_mailer.send_mail.subject
  #
  default from:     "babyGift",  #差出人の名前
  def send_mail
    reply_to: Rails.application.credentials.gmail[:user_name],  #差出人のメールアドレス
    cc: "nisikori0120@i.softbank.jp",
    subject: "【babyGift】ご注文を承りました。内容をご確認くださいませ。"
  end
end
