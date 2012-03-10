class PagesController < ApplicationController

  before_filter :ensure_user_is_signed_in, :only => :home
  
  def home
    @date = DateTime.now
    @url = Url.new    
    
    @name = params[:name]
    @last_name = params[:last_name]
  end

  def about_us
    
  end

  def contact
  end
  
end
