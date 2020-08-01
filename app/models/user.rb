class User < ApplicationRecord
  validates :name, presence: true, length: {maximum: 15 }
  
  VALID_EMAIL_FORMAT = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_FORMAT }

  has_secure_password
  VALID_PASSWORD_FORMAT = /\A(?=.*[0-9])(?=.*[a-z])[0-9a-zA-Z\-]{8,32}\z/i
  validates :password, format: { with: VALID_PASSWORD_FORMAT }
end
