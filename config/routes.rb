Rails.application.routes.draw do
  resources :sessions, only: [:create]
  resources :users, only: [:create]
  get '/logout', to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  root to: "static#home"
end
