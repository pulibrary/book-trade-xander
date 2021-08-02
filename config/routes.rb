# frozen_string_literal: true
Rails.application.routes.draw do
  root to: 'home#index'

  devise_for :users
  get '/users', to: 'user#index'

  resources :books

  # admin routes
  get '/genres/admin', to: 'genres#manage'

  get '/users/admin', to: 'users#index'
  patch '/users/:id/update', to: 'users#update'
  patch '/users/:id', to: 'users#edit'
  delete '/users/:id', to: 'users#destroy'

  resources :genres
end
