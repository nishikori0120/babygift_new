# Preview all emails at http://localhost:3000/rails/mailers/neworder_mailer
class NeworderMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/neworder_mailer/send_mail
  def send_mail
    NeworderMailer.send_mail
  end

end
