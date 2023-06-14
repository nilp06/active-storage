Rails.application.routes.draw do
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :users
  # Defines the root path route ("/")
  root 'home#index'
end
