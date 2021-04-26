Rails.application.routes.draw do
  get 'posts/index'
  get 'posts/show'
  get 'posts/update'
  get 'posts/destroy'
  get 'posts/new'
  get 'posts/edit'
  get 'sessions/new'
  resources :posts
  #  resources :users, only: [:new]
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
