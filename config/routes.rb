Rails.application.routes.draw do
  #The following lines were created when we created the controllers
  #get 'order_items/create'
  #get 'order_items/update'
  #get 'order_items/destroy'
  #get 'carts/show'
  #get 'products/index'
  
  resources :products, only: [:index]
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  
  #Display Men's Products as linked to from _navigation.html.erb:
  get '/men' => 'products#men'

  #Display Women's Products as linked to from _navigation.html.erb:
  get '/women' => 'products#women'
  
  #Display Purchase Confirmation Message from _navigation.html.erb:
  get '/checkout' => 'carts#checkout'

  mount Upmin::Engine => '/admin'
  #The line below is the original reference from the Devise intall
  #root to: 'visitors#index'
  root to: "products#index"
  devise_for :users
  resources :users
end
