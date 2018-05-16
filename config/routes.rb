Rails.application.routes.draw do
  resources :stalls
  namespace :api do
    namespace :v1 do
      resources :paddocks
      resources :orders
      resources :meals
      resources :supplies
      resources :shifts
      resources :horses
      resources :workouts
      resources :farriers
      resources :vets
      resources :phone_numbers
      resources :users
      resources :barns

    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
