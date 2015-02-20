class Users::SessionsController < Devise::SessionsController
  def new
    super
  end

  def create
    super
    flash.delete(:notice) #delete devise flash
    flash[:success] = "Welcome back!"
  end

  def destroy
  	super
  	flash.delete(:notice) #delete devise flash
  	flash[:success] = "You've signed out"
  end
end
