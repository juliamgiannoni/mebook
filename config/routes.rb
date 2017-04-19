Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :users


  root to: 'posts#index'

  get 'users/new', to: 'users#new'

  get 'users/:id', to: 'users#show', as: :user

  post 'users', to: 'users#create'

  get 'posts/new', to: 'posts#new'

  get 'posts/:id', to: 'posts#show', as: :post

  post 'posts', to: 'posts#create'



end
