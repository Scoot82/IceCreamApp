class IcecreamsController < ApplicationController
  
  before_filter :require_login, :only => [:new, :create, :edit, :destroy]
  
  def index
    @icecream = Icecream.all
  end
  
  def new
    @icecream = Icecream.new
  end
  
  def create
    @icecream = Icecream.new(params[:icecream])
    
    if @icecream.save
      flash[:notice] = "New Ice Cream Added!"
      redirect_to icecreams_path 
    else
      flash[:alert] = "Something went wrong, try again!"
      render :new
    end
  end
  
  def show
    @icecream = Icecream.find(params[:id])
  end
  
  def edit
    @icecream = Icecream.find(params[:id])
  end
  
  def update
    @icecream = Icecream.find(params[:id])
    @icecream.update_attributes(params[:icecream])
    @icecream.save
    
    if @icecream.save
      flash[:notice] = "New Ice Cream Added!"
      redirect_to icecreams_path 
    else
      flash[:alert] = "Something went wrong, try again!"
      render :edit
    end
  end
  
  def destroy
    @icecream = Icecream.find(params[:id])
    @icecream.destroy
    redirect_to icecreams_path
  end
  
end
