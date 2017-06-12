Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root to: 'pages#home'

  resources :games, only: [:show] do
    # collection do                       # collection => no restaurant id in URL
    #   get '@team_id', to: "games#top"

    resources :rating, only: [:create, :destroy, :update]
  end

  get "games", to: "games#index"

  resources :profiles, only: [:edit, :update, :new, :create, :show]

end


 # collection do                       # collection => no restaurant id in URL
 #      get 'top', to: "restaurants#top"  # RestaurantsController#top
 #    end
