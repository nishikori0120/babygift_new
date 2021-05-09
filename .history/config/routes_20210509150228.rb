Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    post 'addresses', to: 'users/registrations#create'
    post 'addresses', to: 'users/registrations#create_address'
    # patch 'users', to: 'users/registrations#update'
    # patch 'addresses', to: 'users/registrations#address_update'
  end
  root to: 'orders#index'
  get 'orders/new'
  get 'orders/create'
end
