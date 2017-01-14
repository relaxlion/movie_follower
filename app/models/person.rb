class Person < ApplicationRecord
  belongs_to :country
  has_many :actors
  has_many :writers
  has_many :directors
end
