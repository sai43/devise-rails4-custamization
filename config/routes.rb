SiDevelopment::Application.routes.draw do

  
  captcha_route
  resources :welcomes

  devise_for :users
  get "/users/sales_host"
  post "/users/sales_host"
  get "/users/client_user"
  post "/users/client_user"

  root "users#index"


 
      
    
end
