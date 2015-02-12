# This module defines all the logic needed to integrate with Devise and it's
# associated extensions/modules
module DeviseIntegration
  extend ActiveSupport::Concern

  # Devise modules to load for user authentication
  DEVISE_MODULES = %i(
    authenticatable
    authy_authenticatable
    confirmable
    database_authenticatable
    lockable
    omniauthable
    recoverable
    registerable
    rememberable
    timeoutable
    trackable
    validatable
  )

  # Supported Omniauth providers
  DEVISE_OMNIAUTH_PROVIDERS = %i(github)

  included do
    devise(
      *DeviseIntegration::DEVISE_MODULES,
      omniauth_providers: DeviseIntegration::DEVISE_OMNIAUTH_PROVIDERS
    )
  end
end
