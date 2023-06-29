Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :trips
      resources :bus_photos
      resources :buses
      resources :books
      resources :roles
      resources :users
    end
  end
end
