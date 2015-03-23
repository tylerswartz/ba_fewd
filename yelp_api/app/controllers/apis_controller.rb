class ApisController < ApplicationController
  def index
  end

  def show
  	# verify_input
  	convert_lat_lng
  	# call_yelp
  	# create_list
  	# highlight_one
  	# display_list
  end

  def convert_lat_lng
  	#use geocoder gem. http://railscasts.com/episodes/273-geocoder
  	#ask for user location.
  end
  
  def call_yelp

  end
  
  def create_list

  end
  
  def highlight_one

  end
  
  def display_list

  end



end
