Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/edit'

  resources :books
  resources :users

  root to: "homes#top"
  get '/about', to: 'homes#about', as: 'about'

  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
