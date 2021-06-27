class NeworderMailer < ApplicationMailer
  default from:     "babyGift",  #差出人の名前
  def send_mail
    mail to: "yu.nishikori@di-v.co.jp",
    cc: "nisikori0120@i.softbank.jp",
    subject: "【babyGift】ご注文を承りました。内容をご確認くださいませ。"
  end
end
