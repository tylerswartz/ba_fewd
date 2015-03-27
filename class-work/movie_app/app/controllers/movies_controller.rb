class MoviesController < ApplicationController
  def index
  	@movies = Movie.search(params[:q])

  	#old way to search and show results.
  	# if params[:q]
  	# 	@movies = Movie.where('title LIKE :search',{search: "%#{params[:q]}%"})
  	# else
  	# 	@movies = Movie.all
  	# end
  end
end
