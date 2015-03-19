# this class will likely be simple, keeping track of the user's name.
class Player
	attr_accessor :name

	def initialize
		puts "What is your name?"
		@name = gets.chomp
	end

	def greet
		puts "Hi #{@name}! Good luck."
		puts
	end

end

