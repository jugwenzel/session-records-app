Rails.application.routes.draw do
  root "sessions#index"

  get "/sessions", to: "sessions#index"
  get "/session/:id", to: "session#show"

  # quando eu rodei o rails generate controller sessions index, essa foi a route 
  # criada automaticamente:
  # get 'sessions/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
