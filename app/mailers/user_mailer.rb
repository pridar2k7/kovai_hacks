class UserMailer < ActionMailer::Base
  default from: "deepthirera@gmail.com"

  def alert_holidays mail_id
    mail :to => mail_id, :subject => 'Hurry! Book tickets @ irctc'
  end
end
