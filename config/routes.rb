Rails.application.routes.draw do

  root 'pages#index'

  devise_for :users

  resources :persons
  resources :cases

  get 'o-projekte' => 'pages#about'

end
