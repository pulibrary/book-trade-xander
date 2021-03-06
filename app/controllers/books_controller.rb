# frozen_string_literal: true
class BooksController < ApplicationController
  before_action :require_user
  before_action :load_book, only: %i[show edit update destroy]
  before_action :require_ownership, only: %i[edit update destroy]

  # GET /books or /books.json
  def index
    @books = Book.all
    @genres = Genre.all
  end

  # GET /books/1 or /books/1.json
  def show; end

  # GET /books/new
  def new
    @book = Book.new
  end

  # GET /books/1/edit
  def edit; end

  # POST /books or /books.json
  def create
    @book = Book.new(book_params)
    DeleteWarning.perform_in(5.days, @book.id)

    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: "Book was successfully created." }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /books/1 or /books/1.json
  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to "/users", notice: "Book was successfully updated." }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1 or /books/1.json
  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to "/books", notice: "Book was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def book_params
    params.require(:book).permit(:title, :author, :description, :genre_id).merge(user: current_user)
  end

  def require_ownership
    redirect_to root_path unless current_user.id == @book.user.id
  end

  def load_book
    @book = Book.find(params[:id])
  end
end
