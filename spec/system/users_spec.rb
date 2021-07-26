# frozen_string_literal: true
require "rails_helper"

RSpec.describe "User" do
  context "when entering the site" do
    it "asks to register/sign in" do
      visit "/"
      expect(page).to have_link "Sign In"
      expect(page).to have_link "Register"
    end
    
  end
end