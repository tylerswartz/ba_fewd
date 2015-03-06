
for x in 0..100
	if x%3 == 0 && x%5 != 0
		puts 'fizz'
	elsif x%5 == 0 && x%3 != 0
		puts 'buzz'
	elsif x%3 == 0 && x%5 == 0
		puts 'fizz buzz'
	else
		puts x
	end
end
