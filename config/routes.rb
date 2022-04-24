Rails.application.routes.draw do
  ### Favorites Routes

  get "/favorites" => "favorites#index"

  post "/favorites" => "favorites#create"

  get "/favorites/:id" => "favorites#show"

  # delete "/favorites/:id" => "favorites#destroy"

  ### Plants Index
  get "/plants" => "plants#index"

  ### User Routes

  post "/users" => "users#create"
end
