# frozen_string_literal: true
Rails.application.routes.draw do
  root to: 'home#index'

  devise_for :users
  get '/users', to: 'user#index'

  resources :books

  # admin routes
  get '/genres/admin', to: 'genres#manage'
  get '/users/admin', to: 'users#index'
  delete '/users/:id', to: 'users#destroy'

  resources :genres
end
