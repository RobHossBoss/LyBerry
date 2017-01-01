Rails.application.routes.draw do
  get 'sessions/new'

  resources :users
  resources :items
  resources :shelves
  resources :notes
  get "/signup" => "users#new"
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  #root "/homepage.html"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
