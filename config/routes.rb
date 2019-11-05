Rails.application.routes.draw do
  get 'shopping_carts/index', to: "shopping_carts#index"
  resources :shopping_cart
  resources :orders
  get 'products/index', to: "products#index"
  resources :products
  resources :models
  devise_for :users


  root 'pages#index'

end
