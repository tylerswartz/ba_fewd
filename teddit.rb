puts 'welcome to teddit'

def build_headline(story,upvotes)
	'Story: ' + story + ', upvotes: ' + upvotes.to_s
end

puts build_headline('FCC votes', 67929)

def get_story
	puts "Please enter story headline"
	story = gets.chomp
	puts "Please enter upvotes"
	upvotes = gets.chomp
	build_headline(story, upvotes)
end

puts get_story


