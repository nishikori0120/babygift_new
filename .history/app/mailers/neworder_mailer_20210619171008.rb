class NeworderMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.neworder_mailer.send_mail.subject
  #
  def send_mail
    @new_order = Order.last
binding.pry
    mail to: @new_order.user.email,
    cc: "nisikori0120@i.softbank.jp",
    subject: "【babyGift】ご注文を承りました。内容をご確認くださいませ。"
  end
end
