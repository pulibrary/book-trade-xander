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
      visit books_path
      click_on 'Add Book to Trade'
      fill_in 'Title', with: 'Test Title'
      click_button 'Create Todo'
      expect(page).to have_content('Test Description')
      expect(page).to have_css('div.container')
      expect(page).to have_selector('a[href="/todos"]', text: 'Back')
    end
    it 'display table with descriptions' do
      test_todo = Todo.create(description: "test todo")
      visit todos_path
      expect(page).to have_content(test_todo.description)
    end
  end
end