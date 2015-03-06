###############################################################################
#
# Back-End Web Development - Homework #1
#
# Secret Number is a game you will build in two parts.
# The purpose of the game is to have players guess a secret number from 1-10.
#
# Read the instructions below.
# This exercise will test your knowledge of Variables and Conditionals.
#
###############################################################################
#
# We're ready to program! To practice our Ruby skills lets create a secret number game. 
# In this game players have three tries to guess a secret number between 1 and 10. 
#
# Here are some guidelines to building your game:
#
#	Intros
# 	-	Welcome the player to your game. Let them know who created the game. 
#	  -	Ask for the player's name then personally greet them by printing to the screen, "Hi player_name!"
#	  -	Any good game will communicate the rules. Let the player know they must guess a number between 1 and 10 
#		and that they only have 3 tries to do so.
#
#	Functionality: 
#	 -	Hard code the secret number. Make it a random number between 1 and 10.
#	 - 	Ask the user for their guess.
#	 -	Verify if they were correct. If the player guesses correctly they win the game they should be congratulated and the game should end.
#	 -	If they guess incorrectly, give the player some direction. If they guess too high let them know, if they guess too low, let them know.
#	 - 	Don't forget to let your players know how many guesses they have left. Your game should say something like
#		  "You have X many guesses before the game is over enter a another number"
#	 -	If they don't guess correctly after 3 tries, print that the Player lost and the game is over. Also let them know what the `secret_number` was.
#
# Make sure to add helpful comments to your code to document what each section does.
# 
# Remember to cast input from the Player into the appropriate data type.
#
###############################################################################


#Game Methods

def check_guess(x)
	if x == secret_number
		right = true
	else
		if x < secret_number
			lower = true
		else
			lower = false
		end
	end
end

def num_guess_check()
	if num_guesses == 3
		puts "You ran out of guesses. The secret number was:" + secret_number.to_s
		break
	else
		puts "You have " + (3 - num_guesses) + " left. Guess again."
	end
end



#Game Welcome
puts "....."
puts "Welcome to THE INCREDIBLE SECRET NUMBER GAME (created by TS)"
puts "....."

#Player Name
puts "First, what is your name?"
player_name = gets.chomp.to_s
puts "Hi " + player_name + "! Good luck today."

#Rules
puts "Here is how this game works."
puts "1. You get three tries to guess a secret number between 1 and 10."
puts "2. I'll give you hints if you need to go higher or lower...so use some strategy."
puts "3. That's it. Let's go."

#Play Game
secret_number = rand(1..10)
puts "Okay...I've got the secret number."

num_guesses = 0

puts "What's your first guess?"

while true
	guess = gets.chomp
	num_guesses+=
	check_guess(guess)
	if right == false
		if lower == true
			puts "You are close, but a little too high."
			num_guess_check
		else
			puts "You are close, but a little too low."
			num_guess_check
		end
	else
		puts "Congrats, you won " + player_name + "!!!"
	end
end






















