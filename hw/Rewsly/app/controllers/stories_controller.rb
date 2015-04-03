class StoriesController < ApplicationController
  def new
  end

  def index
  	@stories = Story.all
  end

  def show
  end
end
