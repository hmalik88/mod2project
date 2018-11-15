Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'

  get '/users/login', to: 'users#login'
  post '/users/login', to: 'users#login'
  get '/users/register', to: 'users#new'
  post '/users/register', to: 'users#create'

  # resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create]

  delete "/sessions", to: "sessions#destroy", as: "session"

 resources :posts, except: :destroy
 delete '/posts/:id', to: 'posts#destroy', as: 'destroy_post'
 resources :comments
 resources :users
 resources :categories


end
