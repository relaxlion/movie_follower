class Movie < ApplicationRecord
  belongs_to :origin
  belongs_to :distributor
  belongs_to :productor
  has_many :directors, dependent: :destroy, foreign_key: :movie_id
  has_many :director_people, through: :directors, source: :person
  has_many :actors, dependent: :destroy, foreign_key: :movie_id
  has_many :actor_people, through: :actors, source: :person
  has_many :writers, dependent: :destroy, foreign_key: :movie_id
  has_many :writer_people, through: :writers, source: :person
end
