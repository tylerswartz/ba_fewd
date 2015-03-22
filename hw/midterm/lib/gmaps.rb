class GoogleMaps
	attr_accessor :zipcode, :lat, :lng

	def initialize
	end

	def start
		ask_zipcode
		request_api
		output
	end

	def ask_zipcode
		puts 'This is outputed information from the Google Maps API'
		puts 'What US zipcode would you like to look up?'
		zipcode = gets.chomp

		while zipcode.to_i == 0
	  puts "Thats not a Zipcode. Please try again"
	  zipcode = gets.chomp
		end
	end

	def request_api
		maps_api = JSON.load(RestClient.get("http://maps.googleapis.com/maps/api/geocode/json?address=" + zipcode))
		lat = maps_api['results'][0]['geometry']['location']['lat']
		long = maps_api['results'][0]['geometry']['location']['lng']
	end
	
	def output
		puts "Here is the latitude and longitude of " + zipcode.to_s + "..."
		puts "Latitude: " + lat.to_s
		puts "Longitude: " + long.to_s
	end
end
