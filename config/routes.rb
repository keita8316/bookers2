Rails.application.routes.draw do

  resources :books

  root to: "homes#top"
  get '/about', to: 'homes#about', as: 'about'

  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
