Rails.application.routes.draw do
  # get 'signup/index'
  # get 'signup/show'
  # get 'signup/new'
  # get 'signup/create'
  # get 'users/index'
 # get 'article/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  # root "users#index"

    resources :contact
    root "user1#index"
  
    post  "/login" , to: "user1#login"
    get "/index" , to: "contact#index"
    resources :user1
      
  
  
end
