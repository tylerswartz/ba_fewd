class MuseumsController < ApplicationController
  def index
    @museums = Museum.all
  end

  def new
  end

  def show
    @museum = Museum.find(params[:id])
    @paintings = Painting.where(museum_id:(params[:id]))
  end

  def create
  end

  def edit
  end

  def update
  end
end


