Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'cities#home'

  get 'cities/index', to: 'cities#index'
  get 'cities/cities/new', to: 'cities#new'
  post 'cities', to: 'cities#create'
  get 'cities/:id', to: 'cities#show', as: :city
  get 'cities/:id/edit', to: 'cities#edit', as: :edit_city
  patch 'cities/:id', to: 'cities#update'
  delete 'cities/:id', to: 'cities#destroy', as: :delete_city

  get 'wishlists/index', to: 'wishlists#index'
  get 'wishlists/wishlists/new', to: 'wishlists#new'
  post 'wishlists', to: 'wishlists#create'
  get 'wishlists/:id', to: 'wishlists#show', as: :wishlist
  # patch 'cities/:id', to: 'cities#favorite'
  # patch 'cities/:id', to: 'cities#unfavorite'
  # resources :cities, only: %i[index show create] do
  #   member do
  #     patch :favorite, :unfavorite
  #   end
  # end

  # get "users/:id/profile", to: "pages#profile", as: :user_profile
end
