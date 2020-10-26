Rails.application.routes.draw do

  get '/profile/:id', to: 'profile#index'

  get '/follow/:id', to: 'profile#toggle_follow'

  resources :comments

  root to: redirect('/posts')

  resources :posts

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
