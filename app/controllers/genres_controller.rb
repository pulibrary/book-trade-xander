# frozen_string_literal: true
class GenresController < ApplicationController
  # GET /books/1 or /books/1.json
  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def manage
    @genres = Genre.all
  end
end
