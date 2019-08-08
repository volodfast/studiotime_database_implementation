class Customer < ApplicationRecord
  has_secure_password

  has_many :studios
  has_many :requests
  has_many :bookings
  has_many :reviews
end
