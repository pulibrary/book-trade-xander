# frozen_string_literal: true
require "rails_helper"

RSpec.describe "User" do
  context "when entering the site" do
    it "asks to register/sign in" do
      visit "/"
      expect(page).to have_link "Sign In"
      expect(page).to have_link "Register"
      click_on "Sign In"
      expect(page).to have_content("Log in")
      click_on "Sign up"
      expect(page).to have_content("Password confirmation")
    end
    it "approves sign in for valid users" do
      user = create(:user)
      visit "/users/sign_in"
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password
      click_on 'Log in'
      expect(page).to have_content("Books for Trade")
    end
    it "rejects invalid users" do
      visit "/users/sign_in"
      fill_in 'Email', with: 'invalid@gmail.com'
      fill_in 'Password', with: '123456'
      click_on 'Log in'
      expect(page).to have_content("Invalid Email or password")
    end
    it "can logout users" do
      user = create(:user)
      sign_in user
      visit "/users"
      click_on "Logout"
      expect(page).to have_content("Signed out successfully.")
    end
    it "has a sign up process" do
      visit "/users/sign_up"
      fill_in 'Email', with: 'test2@gmail.com'
      fill_in 'Name', with: 'test name'
      fill_in 'Password', with: 'password'
      fill_in 'Password confirmation', with: 'password'
      click_on "Sign up"
      expect(page).to have_content("Welcome! You have signed up successfully.")
    end
    it "rejects invalid entries during sign up" do
      visit "/users/sign_up"
      fill_in 'Email', with: 'test2@gmail.com'
      fill_in 'Name', with: 'test name'
      fill_in 'Password', with: 'password'
      fill_in 'Password confirmation', with: 'password2'
      click_on "Sign up"
      expect(page).to have_content("Password confirmation doesn't match Password")
    end
  end
  context "when using the site as a user" do
    it "can edit personal user data" do 
      user = create(:user)
      sign_in user
      visit "/users/edit"
      fill_in 'Name', with: 'new name'
      fill_in 'Current password', with: "password"
      click_on "Update"
      expect(User.find(user.id).name).to eq("new name")
    end
  end
  context "when using the site as an admin" do
    it "can view all users" do
      user = create(:user)
      admin_user = create(:admin_user)
      sign_in admin_user
      visit "/users/admin"
      expect(page).to have_content(user.name)
    end
  end
end