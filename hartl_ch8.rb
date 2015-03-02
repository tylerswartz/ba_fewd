# Bulding and sorting an array

puts "Hi, I'm going to sort a-z any words you'd like. Start by typing your words, when you are done just press enter on an empty line. Ready...give me some words:"

words = []

while true
	response = gets
	response.capitalize!
	words.push(response.chomp)
	if response == "\n"
		break
	end 
end

puts "Here is your list sorted a-z:"
puts words.sort


