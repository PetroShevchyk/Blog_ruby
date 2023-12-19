Rails.application.routes.draw do
  root 'pages#home'
  get '/about', to:'pages#about'

  # resources :profile, only: [:show]

  # get '/profile', to:'users#show'
  

  resources :posts
  devise_for :users
end
