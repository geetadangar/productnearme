Rails.application.routes.draw do
  # devise_for :users
 devise_for :users, controllers: { sessions: "users/sessions", registrations: "users/registrations", passwords: "users/passwords" }
 root 'product#index'
 match 'search(/:search)', :to => 'product#search', :as => :search, via: [:get, :post]


 # match 'search(/:search)', :to => 'searches#index', :as => :search, via: [:get, :post]
 resources :product
 resources :searches
	 # get 'search'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
