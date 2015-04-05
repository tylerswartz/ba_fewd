class StoriesController < ApplicationController
  def new
  end

  def index
  	@stories = Story.all
  end

  def show
  end

  def upvote
  	Story.find(param[:id]).upvotes += 1
  end

  def downvote
  	Story.find(param[:id]).upvotes -= 1
  end
end
