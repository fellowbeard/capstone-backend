Rails.application.routes.draw do
  ### Favorites Routes

  get "/favorites" => "favorites#index"

  post "/favorites" => "favorites#create"

  
  delete "/favorites/:id" => "favorites#destroy"
  
  ### Plants Index
  get "/plants" => "plants#index"
  
  get "/plants/:id" => "plants#show"

  ### User Create

  post "/users" => "users#create"

  ### Sessions Create

  post "/sessions" => "sessions#create"
end
