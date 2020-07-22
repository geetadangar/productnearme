Rails.application.routes.draw do
  resources :locations
  # devise_for :users
 devise_for :users, controllers: { sessions: "users/sessions", registrations: "users/registrations", passwords: "users/passwords" }
 # root 'product#index'
 root 'product#method1'
 get "/method1(/:id)", to: "product#method1", as: :method1
 get "/index(/:id)", to: "product#index", as: :index
 get "/home(/:id)", to: "product#home", as: :home
 # match 'search(/:search)', :to => 'product#search', :as => :search, via: [:get, :post]
  post "/search", to: "product#search", as: :search


 # match 'search(/:search)', :to => 'searches#index', :as => :search, via: [:get, :post]
 resources :product
 resources :searches
  # collection { post :search, to: 'products#index' }
end
 

