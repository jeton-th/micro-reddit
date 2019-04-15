class User < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :username,  presence: true, length: {minimum: 6, maximum: 50}
  validates :password_digest, presence: true, length: {minimum: 6, maximum: 50}
  validates :name,  presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password
end
