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



    
        root "user1#index"
        get "user1/index"
        get "contact/index"
        post  "/login" , to: "user1#login"
        get "/index" , to: "contact#index"
        get "/tesing", to:"user1#tesing"
        get "/logout", to:"user1#logout"
        resources :user1
        resources :contact

        # match '*unmatched', to: 'application#not_found_method', via: :all

  
end
