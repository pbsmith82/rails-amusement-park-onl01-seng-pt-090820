Rails.application.routes.draw do
  resources :rides
  resources :attractions
  resources :users

  root "users#home"

  get "/signup" => "users#new"
  post "/signup" => "users#create"
  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
