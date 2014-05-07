Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  resources :locations
  resources :courses
end
