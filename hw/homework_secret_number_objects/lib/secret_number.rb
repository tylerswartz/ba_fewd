# this class will generate our secret number for us
class SecretNumber
	attr_accessor :secret

	def initialize()
		@secret
	end

	def new_number
		@secret = rand(1..10)
	end
end
