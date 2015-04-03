class UrlsController < ApplicationController
  def index
  end

  def show
  	@url = Url.find(params[:id])
  end

  def new
  	@url = Url.new
  end

  def create
  	hash_code = SecureRandom.urlsafe_base64(6)
  	@url = Url.new(url_params)
  	@url.hash_code = hash_code
  	@url.save
  	if @url.save
			redirect_to url_path(@url)
		else
			# render 'new'
		end
  end

  def redirectors
  	code = params[:code]
  	@url = Url.find_by(hash_code:code)
  	link = @url.link
  	redirect_to link
  end

  def preview
    code = params[:code]
    @url = Url.find_by(hash_code:code)
    @link = @url.link
  end


  private

  def url_params
  	params.require(:url).permit(:link)
  end


end


