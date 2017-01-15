class Productor < ApplicationRecord
  belongs_to :country
  has_many :movies, dependent: :destroy
end
