Rails.application.routes.draw do

  namespace :admin do
      resources :users
      resources :cases
      resources :links
      resources :people
      resources :professions

      root to: "users#index"
    end
  root 'pages#index'

  devise_for :users

  resources :persons
  resources :cases

  get 'o-projekte' => 'pages#about'

end
