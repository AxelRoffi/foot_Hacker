Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root to: 'pages#home'

  resources :games, only: [:show] do
    resource :rating, only: [:create, :destroy, :update]
  end

  get "games", to: "games#index"

  resource :profiles, only: [:edit, :update, :new, :create, :show]

end


