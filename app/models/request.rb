class Request < ApplicationRecord
  belongs_to :customer
  belongs_to :studio

  enum status: [:active, :canceled, :rejected]
end
