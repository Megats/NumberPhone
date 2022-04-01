Rails.application.routes.draw do
  resources :users do
    resources :details 
  end
  resources :details


  get 'home/index'
  get 'home/read'
  #root 'home#index'
  root 'users#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
