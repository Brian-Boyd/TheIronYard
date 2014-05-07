Rails.application.routes.draw do
  root 'home#index'

  resources :locations
  resources :courses
end
