Rails.application.routes.draw do
  devise_for :users
  get '/kitchensink', to: 'pages#kitchensink' if Rails.env.development?

  get '/dashboard', to: 'pages#dashboard'

  get '/extraveg', to: 'pages#extraveg'
  
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :vegboxes, only: [:index, :show]

  resources :waitlists, only: [:create]

  get 'confirmation', to: 'pages#confirmation'

  mount StripeEvent::Engine, at: '/stripe-webhooks'

  resources :orders, only: [:show, :create]  do
    resources :payments, only: :new
  end

end
