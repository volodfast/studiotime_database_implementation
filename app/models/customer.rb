class Customer < ApplicationRecord
  has_many :studios
  has_many :requests
  has_many :bookings
  has_many :reviews
end
