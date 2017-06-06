Rails.application.routes.draw do
  get 'games/index'

  get 'games/show'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :games, only: [:index, :show]
end
