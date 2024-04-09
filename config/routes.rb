Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end

  # Defines the root path route ("/")
  root "home#index"

  resources :verification_requests, only: [:index, :new, :create, :show]
end
