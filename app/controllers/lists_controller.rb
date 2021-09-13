class ListsController < ApplicationController
  before_action :create_list_params, only: [:create]

  def show
    @movies = List.find(params[:id]).movies
    @list = List.new
    @lists = List.all
    render 'movies/index'
  end

  def create
    @movies = Movie.all
    @list = List.create(create_list_params)
    @lists = List.all
    render 'movies/index'
  end

  def destroy
    List.find(params[:id]).destroy
    redirect_to root_path
  end

  private

  def create_list_params
    params.require(:list).permit(:name)
  end
end
