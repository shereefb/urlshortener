class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def ensure_user_is_signed_in
    authenticate_user!
    redirect_to new_user_session_path unless signed_in?
  end
  
end
