class UsersController < ApplicationController
  skip_before_filter :require_current_user, :only => [:new, :create]
  def new
    @user = User.new
  end

  def create
    @user = User.new params[:user]
    if @user.save
      session[:user_id] = @user.id
      redirect_to :controller => "experiments", :action => "start", :session_number => 1 
    end
  end

  def index
    @users = User.all
  end

end
