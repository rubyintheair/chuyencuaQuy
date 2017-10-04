Rails.application.routes.draw do
  

  get "programming" => "posts#programming"
  get "health_and_beauty" => "posts#health_and_beauty"
  get "eat_and_drink" => "posts#eat_and_drink"
  get "book" => "posts#book"
  get "other" => "posts#other"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts
  root "home#index"
  
end
