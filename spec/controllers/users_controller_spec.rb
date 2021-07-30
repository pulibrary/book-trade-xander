# frozen_string_literal: true
require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "#update" do
    it 'updates users to admin' do
      user = User.create(email: "test@gmail.com", name: "Test Name", password: "password", password_confirmation: "password")
      admin = User.create(email: "testadmin@gmail.com", name: "Test Admin", password: "password", password_confirmation: "password", admin: true)
      sign_in admin
      put :update, params: { id: user.id }
      expect(User.find(user.id).admin).to be_truthy
    end
  end
  describe "#delete" do
    it "deletes users" do
      user = User.create(email: "test@gmail.com", name: "Test Name", password: "password", password_confirmation: "password")
      admin = User.create(email: "testadmin@gmail.com", name: "Test Admin", password: "password", password_confirmation: "password", admin: true)
      sign_in admin
      delete :destroy, params: { id: user.id }
      expect { user.reload }.to raise_error(ActiveRecord::RecordNotFound)
    end
  end
end
