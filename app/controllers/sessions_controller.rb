class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_login(params['login'])
    if user
      if user.authenticate(params[:password])
        flash[:notice] = "Hello, #{user.name}!"
        session[:user_id] = user.id
        redirect_to icecreams_path
      else
        flash[:notice] = "Wrong Password"
        redirect_to icecreams_path
      end
    else
      flash[:notice] = "Unknown Login"
      redirect_to icecreams_path
    end 
  end

  def destroy
    reset_session
    redirect_to icecreams_url, notice: "See ya!"
  end
end
