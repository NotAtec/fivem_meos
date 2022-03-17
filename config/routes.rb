Rails.application.routes.draw do
  resources :vehicle_notes
  resources :inwoner_notes
  resources :inwoners
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "meos#index"
end
