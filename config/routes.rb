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
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'singup'
  }, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
end
