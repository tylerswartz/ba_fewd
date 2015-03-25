class Movie < ActiveRecord::Base
	def view_all
		@movies = Movie.all
	end
end
