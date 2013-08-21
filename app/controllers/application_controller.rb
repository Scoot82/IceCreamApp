class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_filter :find_user
  
  def find_user
    @user = User.find_by_id(session[:user_id]) #session[:login_id] only exists if valid session created
  end

  def require_login
    if @user.blank?
      redirect_to icecreams_url, notice: "You must be logged in!"
    end
  end
  
end
