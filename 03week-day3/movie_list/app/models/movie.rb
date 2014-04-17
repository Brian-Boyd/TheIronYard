class Movie < ActiveRecord::Base
  validates :name, presence: true
  validates :year, presence: true
  validates :genre, presence: true
  validates :film_rating, presence: true
  validates :critic_rating, presence: true
  validates :description, presence: true

GENRE = ["Action", "Cartoon", "Comedy", "Drama", "Musical", "Sports", "Thriller"]

FILM_RATING =["G", "PG", "PG-13", "R", "NC-17"]

CRITIC_RATING =["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
end
