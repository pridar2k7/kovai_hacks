require 'active_support/core_ext'
namespace :send_mail do
  task :to_all_users  => :environment do
    date_to_travel = Date.today + 2.months
    public_holidays = PublicHoliday.where(leave_date: date_to_travel)
    email_ids = UserDetail.all.collect(&:email_id).join(',')
    public_holidays.each do |public_holiday|
      UserMailer.alert_holidays(email_ids).deliver!
    end
  end
end
