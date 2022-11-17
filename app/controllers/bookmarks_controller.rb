class BookmarksController < ApplicationController
  def show
    @bookmark = Bookmark.find(list[:id], movie[:id])
  end
end
