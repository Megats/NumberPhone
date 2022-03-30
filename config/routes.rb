Rails.application.routes.draw do
  resources :users
  resources :details
  get 'home/index'
  get 'home/read'
  #root 'home#index'
  root 'details#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
