Rails.application.routes.draw do
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
  resources :orders, only: [:new, :create,]
  resources :users, only: [:show, :edit]
end
