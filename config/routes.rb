Rails.application.routes.draw do
  devise_for :users
  get 'pages/products', to: "pages#products"

  root 'pages#index'

end
