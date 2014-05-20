Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  resources :locations do
    resources :courses do
      resources :assignments do
        member do
         get :comment
         post :new_comment
        end
        resources :submissions do
          member do
            get :comment
            post :new_comment
            patch :new
            patch :reviewing
            patch :incomplete
            patch :complete
          end
        end
      end
    end
  end
end