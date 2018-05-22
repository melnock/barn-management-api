Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :healthreports
      resources :stalls
      resources :paddocks
      resources :orders
      resources :meals
      resources :supplies
      resources :shifts
      resources :horses, only: [:index, :create, :destroy, :update]
      resources :workouts
      resources :farriers
      resources :vets
      resources :phone_numbers
      resources :barns
      resources :users
      resources :sessions, only: [:new, :create]
      post '/login', to: "sessions#login"
      post '/signup', to: "users#create"
      post '/newbarn', to: "barns#create"
      get '/get_user', to: "sessions#get_user"
      post '/newhorse', to: "horses#create"
      post '/newvet', to: "vets#create"
      post '/newfarrier', to: "farriers#create"
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
