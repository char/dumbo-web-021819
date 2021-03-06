Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:create, :update, :show, :index]
  post '/signup', to: "users#create"
  post '/login', to: "auth#create"
  get "/current_user", to: "auth#current_profile"
end
