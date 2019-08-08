class Customer < ApplicationRecord
  has_secure_password

  has_many :studios
  has_many :requests
  has_many :bookings
  has_many :reviews

  validates :email, uniqueness: { case_sensitive: false }
  validates_presence_of :email, :first_name, :last_name
end
