class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.all
  end

  def show
  end

  def new
    @bookmark = Bookmark.new
  end

  # GET /restaurants/1/edit
  def edit
  end

  # POST /restaurants
  def create
    @bookmark = Bookmark.new(movie_params)

    if @bookmark.save
      redirect_to @bookmark, notice: 'Bookmark was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /restaurants/1
  def update
    if @bookmark.update(bookmark_params)
      redirect_to @bookmark, notice: 'Bookmark was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /restaurants/1
  def destroy
    @bookmark.destroy
    redirect_to bookmark_url, notice: 'Bookmark was successfully destroyed.'
  end

  private

  def set_bookmark
    @bookmark = Bookmark.find(params[:id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:comment)
  end
end
