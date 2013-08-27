class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
    @albums = @artist.albums
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(params[:artist])
    redirect_to artists_path
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    artist = Artist.update_attributes(params[:artist])
    redirect_to artist
  end
end
