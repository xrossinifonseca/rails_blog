class Customer < ApplicationRecord
  has_secure_password

  validates :name, presence: { message: "Name required" }
  validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, presence: { message: "Password required" }, length: { minimum: 6, message: "Password must be at least 6 characters long" }

end
