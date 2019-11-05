Rails.application.routes.draw do
  devise_for :users
  get 'pages/products', to: "pages#products"
  get 'pages/shopping_cart', to: "pages#shopping_cart"
  root 'pages#index'

end
