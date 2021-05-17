Rails.application.routes.draw do
  devise_for :users
  # root 'home#index'
  root 'posts#index'
  # get 'posts', to: 'posts#index'
  get 'posts/new', to: "posts#new"
  post 'posts', to: 'posts#create'
  get 'posts/:id', to:'posts#show', as: :post
  get 'posts/:id/edit', to:'posts#edit', as: :edit_post
  patch 'posts/:id', to:"posts#update"
  delete 'posts/:id', to:"posts#destroy", as: :delete_post

  get 'services', to:'services#index'
  get 'services/new', to:'services#new'
  post 'services', to:'services#create'
  get 'services/:id', to:'services#show', as: :service
  get 'services/:id/edit', to:'services#edit', as: :edit_service
  patch 'services/:id', to:"services#update"
  delete 'services/:id', to:"services#destroy", as: :delete_service






  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
