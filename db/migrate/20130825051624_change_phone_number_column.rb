class ChangePhoneNumberColumn < ActiveRecord::Migration
  def up
    remove_column :user_details, :phone_number
    add_column :user_details, :phone_number, :bigint
  end

  def down
    remove_column :user_details, :phone_number
    add_column :user_details, :phone_number, :integer
  end
end
