Rails.application.routes.draw do
  root "/homepage.html"
  resources :users
  resources :items
  resources :shelves
  resources :notes
  get "/signup", to: "users#new"
  get , to: "users#new"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
