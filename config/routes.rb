Rails.application.routes.draw do
  resources :reviews
  resources :breweries
  resources :beers
  
  # resources :users

  post '/login', to: 'user#login'

end
