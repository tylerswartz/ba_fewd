class Reddit
  attr_accessor :stories
  def initialize
    @stories = []
  end
  # TODO: This class should have an attribute called "stories".

  # HINT: Start here!
  def fetch_stories
    if @stories.length == 0
      reddit_json = JSON.load(RestClient.get('http://www.reddit.com/.json'))
      reddit_json['data']['children'].each do |story|
        @stories << {
          title: story['data']['title'],
          upvotes: (story['data']['ups'].to_i rescue ''),
          site: story['data']['domain'],
          url: story['data']['url']
        }
      end
    else
     puts @stories
    end
    # TODO: This should check if the stories already have been loaded,
    # and if so, return them. Otherwise, it should load the stories from reddit:
    #   1. It should load http://reddit.com/.json as JSON
    #   2. Your code should find the title, upvotes, and story URL
    #   3. Using that data, create a new Story object with the title, votes,
    #      story URL, and 'reddit.com' for the site argument
    #   4. Store a list Story objects into the stories attribute
    #   5. Return the list of story objects
  end
end
