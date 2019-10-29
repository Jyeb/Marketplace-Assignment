Rails.application.routes.draw do
  get 'categories', to: 'categories#index'
  get 'categories/new'
  get 'categories/create'
  get 'categories/update'
  get 'categories/destroy'
  resources :products
  # resources :users 
  get 'users', to: 'users#new'
  root 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
