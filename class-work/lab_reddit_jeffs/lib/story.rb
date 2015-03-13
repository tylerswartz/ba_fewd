class Story
  attr_accessor :title, :upvotes, :url, :site
  def inialize
    @title = title
    @upvotes = upvotes
    @url = url
    @site = site
  end
  def headline(story)
    puts "This story is called #{@title}. It has #{@upvotes} and came from #{@site} – you can access it by going to #{@url}\n"
  end
end