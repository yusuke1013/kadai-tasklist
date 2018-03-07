Rails.application.routes.draw do
  root to: 'tasks#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  # get 'users/index'

  # get 'users/show'

  # get 'users/new'

  # get 'users/create'

  # root to: 'tasks#index'
  
  get 'signup', to: 'users#new'
  #resources :users, only: [:index, :show, :new, :create]
  
  resources :users, only: [:new, :create]
  # resources :relationships, only: [:create, :destroy]
  
  resources :tasks
end
