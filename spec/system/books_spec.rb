# frozen_string_literal: true
require "rails_helper"

RSpec.describe "Book" do
  context "when navigating the site" do
    it "renders nav bar" do
      user = create(:user)
      sign_in user
      visit "/books"
      expect(page).to have_link "Add Book to Trade"
    end
    it "can add new books" do
      user = create(:user)
      create(:genre)
      sign_in user
      visit "/books/new"
      fill_in 'Title', with: 'Test Title'
      fill_in 'Author', with: 'Test Author'
      fill_in 'Description', with: 'A long book description goes here'
      select 'Fiction', :from => 'book_genre_id'      
      click_button 'Create Book'
      expect(page).to have_content('Book was successfully created.')
      expect(page).to have_content("Genre: Fiction")
    end
    it "can edit books" do
      user = create(:user)
      create(:genre)
      sign_in user
      create(:book, user: user)
      visit "/users"
      click_on 'Edit'
      fill_in 'Title', with: 'New Test Title'
      click_button 'Update Book'
      expect(page).to have_content("Book was successfully updated.")
      expect(page).to have_content("New Test Title")
    end
    it "can delete books" do
      user = create(:user)
      create(:genre)
      sign_in user
      create(:book, user: user)
      visit "/users"
      click_on "Delete"
      expect(page).to have_content("Book was successfully destroyed.")
    end
  end
end
