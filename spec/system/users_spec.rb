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
      user_test = User.create(email: "test@gmail.com", name: "Test Name", password: "password", password_confirmation: "password")
      visit "/users/sign_in"
      fill_in 'Email', with: 'test@gmail.com'
      fill_in 'Password', with: 'password'
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
      user_test = User.create(email: "test@gmail.com", name: "Test Name", password: "password", password_confirmation: "password")
      sign_in user_test
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
      user_test = User.create(email: "test@gmail.com", name: "Test Name", password: "password", password_confirmation: "password")
      sign_in user_test
      visit "/users/edit"
      fill_in 'Name', with: 'new name'
      fill_in 'Current password', with: "password"
      click_on "Update"
      expect(User.find(user_test.id).name).to eq("new name")
    end
  end
  context "when using the site as an admin" do
    it "can view all users" do
      test_user = User.create(email: "testUser@gmail.com", name: "Find Name", password: "password", password_confirmation: "password")
      user_admin = User.create(email: "test@gmail.com", name: "Test Name", password: "password", password_confirmation: "password", admin: true)
      sign_in user_admin
      visit "/users/admin"
      expect(page).to have_content("Find Name")
    end
  end
end