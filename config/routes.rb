Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
get "/upcase_params", controller: "params", action: "upcase_params"

get "/guess_number", controller: "params", action: "guess_number"

get "/url_segment/:variable" => "params#url_segment"
# get "/a_params", controller: "params", action: "a_params"
  # Defines the root path route ("/")
  # root "articles#index"
end
