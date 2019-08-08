class Studio < ApplicationRecord
  belongs_to :customer
  has_many :requests
  has_many :bookings
  has_many :reviews
end
