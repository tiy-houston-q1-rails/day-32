class User < ActiveRecord::Base
  has_secure_password # works with password_digest

  validates :username, presence: true
  validates :password, presence: true, confirmation: true
end
