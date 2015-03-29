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


  def new
  	@movie = Movie.new
  end


  # POST /movies
  def create
    @movie = Movie.new(params[:movie])    # Not the final implementation!
    if @movie.save
      # Handle a successful save.
    else
      render 'new'
    end
  end

end
