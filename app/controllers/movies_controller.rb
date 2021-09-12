class MoviesController < ApplicationController
  def index
    @params = params

    @movies = Movie.all
    @list = List.new
    @lists = List.all
  end

  def show
    @movie = Movie.find(params[:id])
  end
end
