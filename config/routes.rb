Rails.application.routes.draw do
 resources :posts, except: :destroy
 delete '/posts/:id', to: 'posts#destroy', as: 'destroy_post'
 resources :comments
 resources :users
 resources :categories

end
