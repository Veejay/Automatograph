class SessionsController < ApplicationController
  skip_before_filter :require_current_user, :except => [:destroy]
  
  def new
    @user = User.new
  end

  def create
    @user = User.find_by_uid(params[:uid])
    
    if @user
      session[:user_id] = user.id
      redirect_to  
    else
      flash.alert = t(:invalid_password_or_email)
      
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => t(:goodbye)
  end

end
