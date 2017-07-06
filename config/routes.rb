Rails.application.routes.draw do
  resources :themes
  resources :events

  root to: 'pages#home'

  devise_for :users

  resources :users, only: [:show]
  resources :profiles, only: [:new, :edit, :create, :update]
  resources :events, except: [:destroy]

end
