# frozen_string_literal: true
require 'rails_helper'

RSpec.describe Book, type: :model do
  it "is associated to a genre" do
    genre_test = Genre.create(genre: "Fiction")
    book_test = described_class.create(title: "Test Me", author: "Mr. Test", genre: test_genre)
    expect(book_test.genre_id).to equ(genre_text.id)
  end
end