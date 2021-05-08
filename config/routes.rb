Rails.application.routes.draw do
  devise_for :users
  root to: 'orders#index'
  get 'orders/new'
  get 'orders/create'
end
