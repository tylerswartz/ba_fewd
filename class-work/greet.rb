class Person
	attr_accessor :name, :age, :address

	def greet
		puts "Hi my name is #{@name}"
	end

	def address
		puts "My address is #{@address}"
	end
end

eric = Person.new
eric.name = "Eric"
eric.address = "123 Rock St. Oakland"

puts eric.greet
puts eric.address


