class Customer < ApplicationRecord
  has_many :studios
  has_many :requests
end
