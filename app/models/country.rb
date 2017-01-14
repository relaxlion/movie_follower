class Country < ApplicationRecord
  has_many :productors
  has_many :distributors
  has_many :people
end
