Rails.application.routes.draw do
  get 'orders', to: 'orders#orders'
  devise_for :users
  get 'profile', to: 'users#profile'
  get 'categories', to: 'categories#index'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  resources :products
  root 'products#index'
end
