class UrlsController < ApplicationController
  def index
  end

  def show
  end

  def new
  	@url = Url.new
  end

  def create
  	# hash_code = rand(1_000_000..10_000_000-1)
  	hash_code = SecureRandom.urlsafe_base64(8)
  	@url = Url.new(url_params)
  	@url.hash_code = hash_code
  	@url.save
  	if @url.save
			redirect_to root_path
		else
			render 'new'
		end
  end

  private

  def url_params
  	params.require(:url).permit(:link)
  end


end


