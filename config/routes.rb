Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :pets
  resources :people
  resources :recipes

  root 'sessions#login'

  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  get '/logout', to: 'sessions#destroy'

  get '/users', to: 'users#new'
end
