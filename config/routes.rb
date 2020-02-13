Rails.application.routes.draw do

  resources :todo_tasks
  resources :categories, only: [:show, :index]
  resources :users, only: [:index, :show, :create]

  post '/login', to: "users#login"
  get  '/persist', to: "users#persist"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
