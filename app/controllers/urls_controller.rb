class UrlsController < ApplicationController
  
  before_filter :authenticate_user!
  
  def create    
    @url = current_user.urls.build(params[:url])
    # @url = Url.new(params[:url])
    # @url.user_id = current_user.id
    
    if @url.save
      redirect_to url_path(@url)
    else
      redirect_to root_path, :notice => "YOU DIDN't Do IT!"
    end
  end
  
  def show
    @url = Url.find(params[:id])
    
  end
  
end
