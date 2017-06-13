
  devise_for :users, controllers: { registrations: "registrations", omniauth_callbacks: 'users/omniauth_callbacks' }

 # collection do                       # collection => no restaurant id in URL
 #      get 'top', to: "restaurants#top"  # RestaurantsController#top
 #    end






 Rails.application.routes.draw do
    mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users, controllers: { registrations: "registrations", omniauth_callbacks: 'users/omniauth_callbacks' }

  root to: 'pages#home'
  resources :profiles, only: [:edit, :update, :new, :create, :show]
  resources :games, only: [:show] do

  collection do
      get 'for_team', to: "games#for_team"

    resources :rating, only: [:create, :destroy, :update]
    end

  end

  get "games", to: "games#index"
end
