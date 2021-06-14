Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'cards/new'
  get 'cards/create'
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    post 'addresses', to: 'users/registrations#create_address'
    # patch 'users', to: 'users/registrations#update'
    # patch 'addresses', to: 'users/registrations#address_update'
  end
  root to: 'orders#index'
  resources :orders, only: [:new, :create]
  get 'orders/select_address', to: 'orders#select_address'
  post 'order/add_address', to: 'orders#add_address'
  post 'orders/comfimation', to: 'orders#add_address'
  get 'orders/comfimation', to: 'orders#comfimation'
  resources :users, only: [:show, :edit]
  resources :cards, only: [:new, :create]
end
