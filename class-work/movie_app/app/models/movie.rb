class Movie < ActiveRecord::Base
	def self.search(query)
		if query
  		Movie.where('title LIKE :search',{search: "%#{query}%"})
  	else
  		Movie.all
  	end
	end
end
