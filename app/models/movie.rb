class Movie < ApplicationRecord
  # before_destroy :check_bookmarks

  has_many :bookmarks, dependent: :restrict_with_error
  has_many :lists, through: :bookmarks

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true

  # private

  # def check_bookmarks
  #   if Bookmark.where("movie_id = #{:id}")
  #     raise 'ded'
  #   end
  # end
end
