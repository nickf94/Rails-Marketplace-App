Rails.application.routes.draw do
  get 'shopping_carts/index', to: "shopping_carts#index"
  resources :shopping_cart
  get 'orders/complete', to: "orders#complete", as: 'orders_complete'
  get 'orders/cancel'

  get 'orders/:product_id', to: "orders#new", as: "new_order"
  resources :orders
  get 'products/index', to: "products#index"
  post ':user_id/products', to: "products#create", as: "create_product"
  resources :products
  resources :models
  devise_for :users


  root 'pages#index'

end
