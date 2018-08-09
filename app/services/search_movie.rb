class SearchMovie

  def initialize
  end

  def get_movies
    movies = []
    films = Tmdb::Movie.find("Batman")
    films.each do |film|
      movies << film
    end
    puts movies
  end

end
