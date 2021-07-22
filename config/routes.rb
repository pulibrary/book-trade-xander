# frozen_string_literal: true
Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/books', to: 'books#index'

  post '/books', to: 'books#create'
  get '/books/new', to: 'books#new', as: 'new_book'

  get '/books/:id', to: 'books#show', as: 'book'

  get '/genres/:id', to: 'genres#show', as: 'genre'
end