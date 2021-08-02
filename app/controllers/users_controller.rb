# frozen_string_literal: true
class UsersController < ApplicationController
  before_action :require_user
  before_action :require_admin_authorization
  before_action :load_user, only: %i[update destroy]

  # GET /
  def index
    @users = User.all
  end

  # PATCH /users/:id/update
  def update
    @user.update(admin: !@user.admin)
    redirect_to '/users/admin', notice: "User updated."
  end

  def destroy
    @user.destroy
    redirect_to '/users/admin', notice: "User deleted." if @user.destroy
  end

  private

  def load_user
    @user = User.find(params[:id])
  end
end
