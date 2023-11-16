Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :cars
      resources :registration
      resources :token, only: [:create]
    end
  end
end
