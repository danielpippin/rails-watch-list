class MoviesController < ApplicationController

  def title
    @movies = Movie.all
  end

  def overview
    @movies = Movie.find(params[:id])
  end

  def poster_url
    @movies = Movie.all
  end

  def rating
  end

end
