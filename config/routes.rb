Rails.application.routes.draw do

  resources :registration
  resources :token, only: [:create]
end
