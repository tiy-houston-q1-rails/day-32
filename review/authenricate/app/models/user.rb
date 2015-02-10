class User < ActiveRecord::Base
  has_secure_password # works with password_digest
end
