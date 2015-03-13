#Building Class
class Building
	attr_accessor :building_name, :building_address, :apartments

	def initialize(building_name, building_address)
		@building_name = building_name
		@building_address = building_address
		@apartments = []
	end

	def view_apartments
		puts building_name
		puts building_address
		@apartments.each do |apartment|
			puts "==========="
			puts "Unit: #{apartment.name}"
			puts "Square Feet: #{apartment.apt_sqft}"
			puts "Bedrooms: #{apartment.apt_bedrooms}"
			puts "Bathrooms: #{apartment.apt_bathrooms}"
		end
	end
end


