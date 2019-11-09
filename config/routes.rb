Rails.application.routes.draw do
  get 'orders', to: 'orders#orders'
  devise_for :users
  devise_scope :user do  
    get 'address', to: 'users/registrations#address'
  end
  get 'profile', to: 'users#profile'
  get 'categories', to: 'categories#index'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'product', to: 'products#new'
  post 'product', to: 'products#create'
  get 'products/:id', to: 'products#show', as: 'show_product'
  get 'add_category', to: 'categories#new'

  root 'products#index'
end
