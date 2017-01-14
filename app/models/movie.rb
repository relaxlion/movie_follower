class Movie < ApplicationRecord
  belongs_to :origin
  belongs_to :distributor
  belongs_to :productor

end
