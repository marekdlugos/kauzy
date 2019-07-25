Rails.application.routes.draw do

  root 'pages#index'

  devise_for :users

  resources :persons
  resources :cases

end
