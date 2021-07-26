# frozen_string_literal: true
require "rails_helper"

RSpec.describe "Book" do
  context "when navigating the site" do
    it "renders nav bar and title" do
      visit "/books"
      expect(page).to have_content("Books for Trade")
      expect(page).to have_link "Add Book to Trade"
    end
    it "can add new books" do
      Genre.create(genre: "test genre")
      visit books_path
      click_on 'Add Book to Trade'
      fill_in 'Title', with: 'Test Title'
      select 'test genre', :from => 'book_genre_id'
      click_button 'Create Book'
      expect(page).to have_content('Test Title')
      expect(page).to have_content("Genre: test genre")
      expect(page).to have_css('div.contact_entry')
      expect(page).to have_selector('a[href="/books"]', text: 'Back')
    end
  end
end
