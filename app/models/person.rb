class Person < ApplicationRecord
  belongs_to :country
  has_many :directors, dependent: :destroy, foreign_key: :person_id
  has_many :direct_movies, through: :directors, source: :movie
  has_many :actors, dependent: :destroy, foreign_key: :person_id
  has_many :actor_movies, through: :actors, source: :movie
  has_many :writers, dependent: :destroy, foreign_key: :person_id
  has_many :writer_movies, through: :writers, source: :movie
end
