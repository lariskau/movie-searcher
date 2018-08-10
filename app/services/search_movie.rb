require 'themoviedb-api'
require 'dotenv'
Dotenv.load('.env')
Tmdb::Api.key(ENV["TMDB_API_KEY"])

class SearchMovie

  def initialize(name)
    @name = name
  end

  def perform

    movie_title = []
    movie_date = []

    search = Tmdb::Search.movie(@name).results[1]

    movie_title << search.original_title
    movie_date << search.release_date

    @movie_hash = Hash[movie_title.zip(movie_date)]

  end

  def save
    Movie.create(name: "#{@name}", value: "#{@movie_hash.values_at("#{@name}")}")
  end

end
