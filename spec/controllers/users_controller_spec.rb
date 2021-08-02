# frozen_string_literal: true
require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "#update" do
    it 'updates users to admin' do
      user = create(:user)
      admin_user = create(:admin_user)
      sign_in admin_user
      put :update, params: { id: user.id }
      expect(User.find(user.id).admin).to be_truthy
    end
  end
  describe "#delete" do
    it "deletes users" do
      user = create(:user)
      admin_user = create(:admin_user)
      sign_in admin_user
      delete :destroy, params: { id: user.id }
      expect { user.reload }.to raise_error(ActiveRecord::RecordNotFound)
    end
  end
end
