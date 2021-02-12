Rails.application.routes.draw do
  resources :reviews
  resources :breweries
  resources :beers
  
  # resources :users

  post '/login', to: 'user#login'
  get '/profile', to: 'users#show'
  patch '/profile', to: 'user#update'

end
