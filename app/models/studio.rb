class Studio < ApplicationRecord
  belongs_to :customer
  has_many :requests
end
