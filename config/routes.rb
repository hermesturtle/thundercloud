Thundercloud::Application.routes.draw do

  root to: "static_pages#home"
  match "/home" => "static_pages#home"
  match "/blog" => "static_pages#blog"
  match "/about" => "static_pages#about"

  resources :artists, only: [:index, :show]
end
