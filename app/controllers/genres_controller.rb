# frozen_string_literal: true
class GenresController < ApplicationController
  # GET /books/1 or /books/1.json
  def show
    @genre = Genre.find(params[:id])
  end
end
