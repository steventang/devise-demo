class Users::RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
    super
    flash.delete(:notice)
    flash[:success] = "You've signed up!"
  end
end
