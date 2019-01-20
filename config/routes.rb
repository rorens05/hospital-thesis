Rails.application.routes.draw do
  resources :transactions
  resources :payment_methods
  resources :products
  resources :customers
  resources :suppliers
  resources :categories
  devise_for :admins
  resources :admins
  get 'dashboard/index'
  root 'dashboard#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
