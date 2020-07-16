Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/employees" => "employees#index"
    get "/employees/:id" => "employees#show"
    post "/employees" => "employees#create"
    patch "/employees/:id" => "employees#update"
    delete "/employees/:id" => "employees#destroy"
    
    
  end
end
