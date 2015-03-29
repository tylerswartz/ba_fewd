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

  def create
    @movie = Movie.new(movie_params)

    respond_to do |format|
      if @movie.save
        format.html { redirect_to @movie, notice: 'Movie was successfully added.' }
        format.json { render :show, status: :created, location: @movie }
      else
        format.html { render :new }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

end
