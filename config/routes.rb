Rails.application.routes.draw do
  resources :reviews
  post '/login', to: 'sessions#login'
  post '/autologin', to: 'sessions#autologin'
  get 'sessions/autologin'
  resources :users
  resources :synths
end
