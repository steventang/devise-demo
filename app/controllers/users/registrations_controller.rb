class Users::RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def edit
    @additional_providers = ['facebook', 'twitter']
    # for every provider that user already connected to, remove it from the additional providers that user can connect to
    @user.identities.each { |i| @additional_providers.delete(i.provider) }
  end

  def create
    super
    flash.delete(:notice)
    flash[:success] = "You've signed up!"
  end
end
