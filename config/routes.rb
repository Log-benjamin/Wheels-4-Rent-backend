Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :token, only: [:create]
      resources :registration
      resources :cars
    end
  end
end
