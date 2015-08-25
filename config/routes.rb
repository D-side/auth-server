Rails.application.routes.draw do
  # OAuth2 provider
  use_doorkeeper
  namespace :api do
    namespace :v1 do
      get '/me' => "credentials#me"
    end
  end

  # OAuth2 client
  devise_for :user,
    controllers: { omniauth_callbacks: 'authentication' }

  devise_scope :user do
    delete '/logout', to: 'authentication#logout'
  end

  root to: 'home#index'
end
