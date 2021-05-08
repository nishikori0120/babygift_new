Rails.application.routes.draw do
  root to: 'orders/index'
  get 'orders/new'
  get 'orders/create'
end
