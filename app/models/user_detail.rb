class UserDetail < ActiveRecord::Base
  attr_accessible :name, :phone_number, :email_id
end
