class User < ApplicationRecord
  before_save { email.downcase!}
  validates :name, presence: true, length: {minimum: 2, maximum: 50}
  VALID_EMAIL = /\A[\w+\-.]+@[a-z\d]+[a-z\d\-.]+[a-z\d\-]+\.[a-z]+\z/i
  validates :email, presence: true, length: {minimum: 5, maximum: 255},
  format: {with: VALID_EMAIL}, uniqueness: {case_sensitive: false}
  validates :telephone, presence: true, length: {minimum: 8, maximum: 11}
  has_secure_password
  validates :password, presence: true, length: { minimum: 6}
end
