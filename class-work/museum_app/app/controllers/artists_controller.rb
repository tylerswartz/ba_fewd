class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def new
  end

  def show
    @artist = Artist.find(params[:id])
    @paintings = Painting.where(artist_id:(params[:id]))
  end

  def create
  end

  def edit
  end

  def update
  end
end
