class ArtistsController < ApplicationController
  load_and_authorize_resource

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
    @albums = @artist.albums
    @products = @artist.products
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
    artist = Artist.find(params[:id])
    artist.update_attributes(params[:artist])
    redirect_to artist
  end
end
