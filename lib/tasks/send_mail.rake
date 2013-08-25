require 'active_support/core_ext'
namespace :send_mail do
  task :to_all_users  => :environment do
    date_to_travel = Date.today + 2.months
    public_holidays = PublicHoliday.where(leave_date: date_to_travel)
    fullonsms = SmsSender.new(9894555817,"57829")
    public_holidays.each do |public_holiday|
      UserDetail.all.each do |user|
        UserMailer.alert_holidays(user.email_id).deliver!
        fullonsms.send(user.phone_number, "Please book ticket")
      end
    end
  end
end
