Rails.application.routes.draw do
  devise_for :users
  get 'profile', to: 'users#profile'
  get 'categories', to: 'categories#index'
  get 'categories/new'
  get 'categories/create'
  get 'categories/update'
  get 'categories/destroy'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  resources :products
  root 'products#index'
end
