Rails.application.routes.draw do
  devise_for :users

  resources :bookings, only: %i[create]
end
