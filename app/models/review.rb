class Review < ApplicationRecord
  belongs_to :customer
  belongs_to :studio

  enum for: [:customer, :studio]
end
