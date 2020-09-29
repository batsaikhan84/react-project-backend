Rails.application.routes.draw do
  root 'static#home'
  post '/sessions', to: 'session#create'
  post '/registrations', to: 'users#create'
  get '/logout', to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
end
