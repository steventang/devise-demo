class Users::RegistrationsController < Devise::RegistrationsController
  before_action :set_additional_providers, only: [:edit, :update]

  private

    def set_additional_providers
      @additional_providers = ['facebook', 'twitter']
      # for every provider that user already connected to, remove it from the additional providers that user can connect to
      @user.identities.each { |i| @additional_providers.delete(i.provider) }
    end
end