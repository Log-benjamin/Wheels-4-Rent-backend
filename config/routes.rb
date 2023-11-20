Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'

  namespace :api do
    namespace :v1 do
      resources :cars
      resources :reservation
      resources :registration
      resources :token, only: [:create]
    end
  end
end
