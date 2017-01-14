class Distributor < ApplicationRecord
  belongs_to :country
  has_many :movie
end
