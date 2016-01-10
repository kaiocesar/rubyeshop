Rails.application.routes.draw do
  
  get 'sessions/new'

  get 'products' => 'products#index'
  get 'products/create' => 'products#create'
  post 'products/store' => 'products#store'
  get 'products/:id/remove' => 'products#remove'
  get 'products/:id/edit' => 'products#edit'
  patch 'products/update' => 'products#update'
  get 'products/search' => 'products#search', as: :search_products


  root "products#index"

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"

  resources :users
  resources :sessions
  
end
