Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/actors-page" => "actors#list_by_id"
  get "/all-actors" => "actors#list_all"
end
