Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
  #   get "/photos" => "photos#index"
  # end
    post "/users" => "users#create"
    post "/cats" => "cats#create"
    patch "/cats/feed" => "cats#feed"



    post "/sessions" => "sessions#create"
  end
end
