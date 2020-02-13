Rails.application.routes.draw do

  resources :categories, only: [:show, :index]
  resources :users, only: [:index, :show, :create] 
  resources :todo_tasks

  post '/login', to: "users#login"
  get  '/persist', to: "users#persist"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
