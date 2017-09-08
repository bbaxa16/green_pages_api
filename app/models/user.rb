class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, case_sensitive: false
  validates :password, presence: true
  has_secure_password
end
