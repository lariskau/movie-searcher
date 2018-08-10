class StaticController < ApplicationController

  def movie
    @movies = Movie.all
  end

  def redirect
    redirect_to '/movie'
  end

  def create
    @name = params[:name]
    SearchMovie.new(@name).perform
    redirect_to root_path
  end
end
