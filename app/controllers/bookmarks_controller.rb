class BookmarksController < ApplicationController
  def create
    keys = params.keys.reject { |ele| ele == 'controller' }
    keys = keys.reject { |ele| ele == 'list_id' }
    keys = keys.reject { |ele| ele == 'action' }

    keys.each do |movie_id|
      new_bookmark = Bookmark.new
      new_bookmark.list_id = params[:list_id]
      new_bookmark.movie_id = movie_id
      new_bookmark.save
    end
    redirect_to root_path
  end
end
