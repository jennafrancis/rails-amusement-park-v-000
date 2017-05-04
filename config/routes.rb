Rails.application.routes.draw do
  root 'static#home'
  resources :attractions
  resources :users
  post '/ride/:id', to: "users#ride", as: :ride
  get '/signin', to: "sessions#new"
  post '/signin', to: "sessions#create"
  get '/signout', to: "sessions#destroy"
end
