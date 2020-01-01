Rails.application.routes.draw do
  resources :pickups
  resources :trips
  resources :places
  devise_for :users
  root :to => "users#index"
  get '/admin', to: 'users#admin_home'
  get '/driver', to: 'users#driver_home'
  get '/passenger', to: 'users#passenger_home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
