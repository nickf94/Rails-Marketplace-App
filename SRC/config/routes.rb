Rails.application.routes.draw do
  get 'shopping_carts/index', to: "shopping_carts#index"
  resources :shopping_cart
  get "orders", to: "orders#new", as: "new_order"
  resources :orders
  get 'products/index', to: "products#index"
  post ':user_id/products', to: "products#create", as: "create_product"
  resources :products
  resources :models
  devise_for :users


  root 'pages#index'

end
