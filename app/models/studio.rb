class Studio < ApplicationRecord
  belongs_to :customer
  has_many :requests
  has_many :bookings
  has_many :reviews

  validates_presence_of :name, :country, :town, :address, :price
end
