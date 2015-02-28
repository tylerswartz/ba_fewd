# 99 Beers on the Wall

# puts 'Are you ready to sing a song? (Y/N)'

# answer = gets.chomp.upcase

# if answer == 'Y'
# 	x = 99
# 	while x > 1
# 		puts x.to_s + " bottles of beer on the wall! " + x.to_s + " bottles of beer!!! Take one down, pass it around. " + (x - 1).to_s + " bottles of beer on the wall..."
# 		x = x - 1
# 	end
# 	puts "1 bottle of beer on the wall! 1 bottle of beer!!! Take it down, pass it around...no more bottles of beer!!!"
# else
# 	puts "sad...maybe another time then."
# end



# deaf grandma

puts "HIGH SONNY, HOW ARE YOU DOING?"
x = 0

while true
	response = gets.chomp	
	
	if response == 'BYE'
		x = x + 1
	else
		x = 0
	end
	
	if x == 3
		puts "BYE BYE HONEY!"
		break
	end

	if response == response.upcase
		puts "OH...NO, NOT SINCE 19" + rand(10..60).to_s + "!"
	else
		puts "HUH?! SPEAK UP SONNY!"
	end
end

