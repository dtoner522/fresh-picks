Rails.application.routes.draw do
  devise_for :users
  get '/kitchensink', to: 'pages#kitchensink' if Rails.env.development?

  get '/dashboard', to: 'pages#dashboard'
  
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :vegboxes, only: [:index, :show, :edit, :update]

  resources :extravegs

  resources :customers, only: [:create]

  get 'confirmation', to: 'pages#confirmation'
  get 'failed', to: 'pages#failed'

  mount StripeEvent::Engine, at: '/stripe-webhooks'

end
