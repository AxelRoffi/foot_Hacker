 Rails.application.routes.draw do
    mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users, controllers: { registrations: "registrations", omniauth_callbacks: 'users/omniauth_callbacks' }

  root to: 'pages#home'
  resources :profiles, only: [:edit, :update, :new, :create, :show]

  resources :games, only: [:show] do
    resources :rating, only: :create
  end

  get "games", to: "games#index"
end


