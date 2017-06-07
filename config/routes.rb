Rails.application.routes.draw do


  ActiveAdmin.routes(self)
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :games, only: [:index, :show]

  resource :profile, only: [:edit, :update]


end


