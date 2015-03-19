# this class may be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is cleanly structured and easy to read.
class Game
	# attr_accessor :number, :player, :guess

	# start game with secret number
	def initialize(player)
		@number = (SecretNumber.new).secret
		@name = player.name
		@num_guesses = 3
	end

	def start_game
		say_rules
		# ask_for_guess
		# check_guess 
		# decide_outcome
		play
	end


	def say_rules
		puts "Here is how this game works."
		puts "1. You get three tries to guess a secret number between 1 and 10."
		puts "2. I'll give you hints if you need to go higher or lower...so use some strategy."
		puts "3. That's it. Let's go."
	end

	# game play
	def play
		2.downto(0) do |num_guesses|
			puts "What is your guess?"
			guess = gets.strip.to_i

			#verify input
			while guess == 0
  			puts "Please enter a number and press enter."
  			guess = gets.strip.to_i
			end

			# increment guess count
			@num_guesses = @num_guesses - 1

			# check guess
			if guess == @number
				puts "Congrats, you won #{@name}!!! Nice job with the correct guess of #{@number}!"
				exit
			elsif guess > @number
				puts "Close, but you are too high. You have #{@num_guesses} left."
			else
				puts "Close, but you are too low. You have #{@num_guesses} left."
			end
		end

		puts "Game over #{@name}. The secret number was #{@number}."
	end
end
