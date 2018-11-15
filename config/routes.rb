Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'
  get '/users/login', to: 'users#login'
  post '/users/login', to: 'users#login'
  get '/users/register', to: 'users#register'
  post '/users/register', to: 'users#register'

  resources :users, only: [:index, :new, :create, :show]

end
