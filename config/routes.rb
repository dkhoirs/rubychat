Rails.application.routes.draw do
  resources :chats
  root 'chats#index'
  # get 'chats/index'
  # get 'chats/create'
  # get 'chats/new'
  # get 'chats/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
get "/articles", to: "articles#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
