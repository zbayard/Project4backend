Rails.application.routes.draw do
  resources :reviews
  resources :beers
  resources :breweries
  # resources :users

  post '/login', to: 'user#login'

end
