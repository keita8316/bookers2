Rails.application.routes.draw do

  devise_for :users
  resources :books
  resources :users

  root to: "homes#top"
  get '/about', to: 'homes#about', as: 'about'

 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
