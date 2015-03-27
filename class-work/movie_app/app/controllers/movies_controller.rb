class MoviesController < ApplicationController
  def index
  	if params[:q]
  		@movies = Movie.where(title: params[:q])
  	else
  		@movies = Movie.all
  	end
  end
end
