require_relative 'lib/story'
require_relative 'lib/reddit'
require_relative 'lib/mashable'



@stories = []
redditor = Reddit.new
redditor.fetch_stories

puts redditor.stories