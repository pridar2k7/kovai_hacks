class RenameDateToLeaveDateInPublicHolidays < ActiveRecord::Migration
  def change
    rename_column :public_holidays, :date, :leave_date
  end
end
