Thundercloud::Application.routes.draw do
  match "/home" => "static_pages#home"
  match "/blog" => "static_pages#blog"
  match "/about" => "static_pages#about"
end
