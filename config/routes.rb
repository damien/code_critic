Rails.application.routes.draw do
  devise_for :users,
             path_names: {
               disable_authy: '/2fa/disable',
               enable_authy: '/2fa/enable',
               verify_authy: '/2fa/verify',
               verify_authy_installation: '/2fa/installed'
             },
             controllers: {
               omniauth_callbacks: 'omniauth_callbacks',
               devise_authy: 'authy'
             }

  root to: 'home#index'
end
