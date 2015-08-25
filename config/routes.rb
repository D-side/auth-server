Rails.application.routes.draw do
  use_doorkeeper
  devise_for :user, controllers: { omniauth_callbacks: 'authentication' }

  devise_scope :user do
    delete '/logout', to: 'authentication#logout'
  end

  root to: 'home#index'
end
