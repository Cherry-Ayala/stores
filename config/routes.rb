Rails.application.routes.draw do
  root 'sessions#login'
  get "login", to: "sessions#login"
  post "login", to: "sessions#create"
  get "main", to: "sessions#main"
  get 'main/books', to: 'main#books', as: 'main_books'
  get 'main/stores', to: 'main#stores', as: 'main_stores'
  delete "logout", to: "sessions#destroy"
  resources :users, except: [:new]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
