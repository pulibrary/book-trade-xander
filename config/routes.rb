# frozen_string_literal: true
Rails.application.routes.draw do
  root to: 'home#index'

  devise_for :users
  get '/users', to: 'user#index'

  resources :books

  get '/genres', to: 'genres#index'
  get '/genres/:id', to: 'genres#show', as: 'genre'

  # admin routes for genres
  get '/genres/admin', to: 'genres#manage'
end
