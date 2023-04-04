class Dev < ApplicationRecord
  has_one :profile
  has_many :articles

  validates :username, presence: true, uniqueness: true
  validates :lname, presence: true
  validates :fname, presence: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  has_secure_password
end
