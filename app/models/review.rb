class Review < ApplicationRecord
  belongs_to :customer
  belongs_to :studio

  enum for: [:customer, :studio]

  validates_presence_of :text, :for
end
