class Story
  # TODO: This object should require four arguments:
  #  - title
  #  - number of (up)votes on a story
  #  - the URL of the story
  #  - the site that it came from

  # TODO: Add a method called "headline" that returns a pretty string for
  # displaying on the command line with all of the data from the object.
  attr_accessor :title, :ups, :url, :site

  def initialize(title, ups, url, site)
    @title = title
    @ups = ups
    @url = url
    @site = site
  end

  def headline
  	# puts "#{@ups} -- #{@title} --  #{@site} -- #{@url}"
  	puts "HEADLINE DATA, YAY"
  end
end
