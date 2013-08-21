class User < ActiveRecord::Base
  attr_accessible :name, :password, :login, :password_confirmation
  has_secure_password
end
