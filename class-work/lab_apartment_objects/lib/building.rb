#Building Class
class Building
	attr_accessor :building_name, :building_address, :apartments

	def initialize(building_name, building_address)
		@building_name = building_name
		@building_address = building_address
		@apartments = []
	end

	def view_apartments
		@apartments.each do |x|
			puts "Name is #{@apartments[x].name}"
			puts "Square Feet is #{@apartments[x].apt_sqft}"
		end
	end

end


