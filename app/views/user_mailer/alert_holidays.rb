class UserMailer < ActionMailer::Base
  default from: "kovaihacks@gmail.com"

  def alert_holidays mail_id
    mail :to => mail_id, :subject => 'Hurry! Book tickets @ irctc'
  end
end