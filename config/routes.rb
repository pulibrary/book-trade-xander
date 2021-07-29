# frozen_string_literal: true
Rails.application.routes.draw do
  root to: 'home#index'

  devise_for :users
  get '/users', to: 'user#index'

  resources :books

  # admin routes for genres
  get '/genres/admin', to: 'genres#manage'

  resources :genres
end
