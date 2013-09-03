Thundercloud::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :users

  root to: "static_pages#home"
  match "/home" => "static_pages#home"
  match "/blog" => "static_pages#blog"
  match "/about" => "static_pages#about"

  resources :artists
  resources :products, only: [:index, :show]
  resources :line_items, only: [:create, :destroy]
  resources :carts, only: [:show] do
    member do
      get :checkout
    end
  end
  resources :orders, only: [:show]
end
