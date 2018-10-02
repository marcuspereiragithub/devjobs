Rails.application.routes.draw do
  get 'register/index'
  post "/users/:id", to: "articles#create", as: :user
  get '/users/:id', to: "articles#show"
  resources :articles
  root 'register#index'
end
