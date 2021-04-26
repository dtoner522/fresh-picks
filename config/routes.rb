Rails.application.routes.draw do
  devise_for :users
  get '/kitchensink', to: 'pages#kitchensink' if Rails.env.development?
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :vegboxes, only: [:index, :show]

  mount StripeEvent::Engine, at: '/stripe-webhooks'

  resources :orders, only: [:show, :create]  do
    resources :payments, only: :new
  end


end
