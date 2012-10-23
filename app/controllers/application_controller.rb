class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :require_current_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
  
  def require_current_user 
    unless current_user.present?
      redirect_to new_session_url 
    end
  end
  
end
