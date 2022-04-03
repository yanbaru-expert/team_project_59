class MoviesController < ApplicationController
  def index
    @movies = Movie.genre_list(params[:genre])
  end
end
