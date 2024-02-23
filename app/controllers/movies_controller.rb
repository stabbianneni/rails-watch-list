class MoviesController < ApplicationController
  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to lists_path()
  end
end
