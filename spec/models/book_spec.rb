# frozen_string_literal: true
require 'rails_helper'

RSpec.describe Book, type: :model do
  let(:user_test) { User.create(email: "test@gmail.com", name: "Test Name", password: "password", password_confirmation: "password") }
  let(:genre_test) { Genre.create(genre: "Fiction") }
  let(:book_test) { described_class.create(title: "Test Me", author: "Mr. Test", genre: genre_test, user: user_test) }

  it "is associated to a genre" do
    expect(book_test.genre.genre).to eq(genre_test.genre)
  end
  it "is associated to a user" do
    expect(book_test.user.name).to eq(user_test.name)
  end
  it "has attributes" do
    expect(book_test.title).to eq("Test Me")
    expect(book_test.author).to eq("Mr. Test")
    expect(book_test.description).to eq(nil)
  end
end
