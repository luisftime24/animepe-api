# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/', to: 'animes#index'
  get '/anime/:id', to: 'animes#show'
  post '/anime/:id', to: 'animes#create'
  patch '/anime/:id', to: 'animes#update'
  post '/anime/:id/episodes', to: 'animes#add_episode'
end
