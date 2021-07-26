# frozen_string_literal: true
require 'rails_helper'

RSpec.describe User, type: :model do
  user_test = User.create(email: "test@gmail.com", name: "Test Name", password: "password", password_confirmation: "password")
  it "has attributes" do
    expect(user_test.email).to eq("test@gmail.com")
    expect(user_test.name).to eq("Test Name")
    expect(user_test.password).to eq("password")
  end
end