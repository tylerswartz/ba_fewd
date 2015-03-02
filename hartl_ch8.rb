# Bulding and sorting an array

# puts "Hi, I'm going to sort a-z any words you'd like. Start by typing your words, when you are done just press enter on an empty line. Ready...give me some words:"

# words = []

# while true
# 	response = gets
# 	response.capitalize!
# 	words.push(response.chomp)
# 	if response == "\n"
# 		break
# 	end 
# end

# puts "Here is your list sorted a-z:"
# puts words.sort


# Table of contents revisited

title = ['Table of Contents']
contents = [['Chapter 1: Getting Started', 'Page 1'],
						['Chapter 2: Numbers', 'Page 9'],
						['Chapter 3: Letters', 'Page 13']]

line_width = 54
puts ((title[0]).center(line_width))
puts "\n"

chapter_counter = 1

contents.each do |chapter|
	name = chapter[0]
	number = chapter[1]
	puts (name.ljust(line_width/2) + number.rjust(line_width/2))	
	chapter_counter = chapter_counter + 1
end