class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :mail, :password, :password_confirmation
  has_many :reviews
  has_secure_password
end
