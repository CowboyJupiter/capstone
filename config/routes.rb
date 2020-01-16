Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
  #   get "/photos" => "photos#index"
  # end
    post "/users" => "users#create"

    post "/cats" => "cats#create"
    get "/cats/:id" => "cats#show"
    patch "/cats/:id/feed" => "cats#feed"
    patch "/cats/:id/water" => "cats#water"
    patch "/cats/:id/niptime" => "cats#niptime"
    patch "/cats/:id/play" => "cats#play"



    post "/sessions" => "sessions#create"
  end
end
