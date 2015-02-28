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

# puts "HIGH SONNY, HOW ARE YOU DOING?"
# x = 0

# while true
# 	response = gets.chomp	
	
# 	if response == 'BYE'
# 		x = x + 1
# 	else
# 		x = 0
# 	end
	
# 	if x == 3
# 		puts "BYE BYE HONEY!"
# 		break
# 	end

# 	if response == response.upcase
# 		puts "OH...NO, NOT SINCE 19" + rand(10..60).to_s + "!"
# 	else
# 		puts "HUH?! SPEAK UP SONNY!"
# 	end
# end



# leap years

puts "I calculate leap years. Tell me two years and I'll tell you how many leap years are in between them. Give me the first year (lower year)..."
year1 = gets.chomp.to_i
puts "Great, now give me the second year (higher year)..."
year2 = gets.chomp.to_i
puts "Cool, the leaps years are:"


while year1 < year2
	year1 = year1 + 1
	if ((year1/4.0) % 1 ) == 0 && ((year1/100.0) % 1 ) != 0
		puts year1
	elsif ((year1/100.0) % 1 ) == 0 && ((year1/400.0) % 1 ) == 0
		puts year1
	end
end 


































