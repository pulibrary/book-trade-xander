# frozen_string_literal: true
require 'rails_helper'

RSpec.describe BooksController, type: :controller do
  describe "#create" do
    context "when there is an error saving a book" do
      it "returns 422 status error" do
        user = create(:user)
        sign_in user
        # errors due to no genre association
        post :create, params: { book: { title: "test", author: "test author", description: "test description" } }
        expect(response).to have_http_status(422)
      end
    end
  end
  describe "#update" do
    it "updates a book" do
      user = create(:user)
      genre = create(:genre)
      book = Book.create(title: "test", author: "test author", description: "test description", genre: genre, user: user)

      sign_in user
      put :update, params: { id: book.id, book: { title: "new test", author: "test author", description: "test description", genre_id: genre.id } }
      book = Book.find(book.id)
      expect(book.title).to eq("new test")
    end
    context "when there is an error updating a book" do
      it "returns 422 status error" do
        user = User.create(email: "test@gmail.com", password: "password", password_confirmation: "password")
        genre = Genre.create(genre: "fiction")
        book = Book.create(title: "test", author: "test author", description: "test description", genre: genre, user: user)
        sign_in user
        # errors due to invalid author string
        put :update, params: { id: book.id, book: { title: "new test", author: "test author2", description: "test description" } }
        expect(response).to have_http_status(422)
      end
    end
  end
end
