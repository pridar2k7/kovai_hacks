class CreateUserDetails < ActiveRecord::Migration
  def change
    create_table :user_details do |t|
      t.integer :phone_number, unique: true
      t.string :name
      t.string :email_id

      t.timestamps
    end
  end
end
