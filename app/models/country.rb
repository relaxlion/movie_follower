class Country < ApplicationRecord
  has_many :productors, dependent: :destroy
  has_many :distributors, dependent: :destroy
  has_many :people, dependent: :destroy
end
