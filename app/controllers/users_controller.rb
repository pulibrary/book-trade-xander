# frozen_string_literal: true
class UsersController < ApplicationController
  before_action :require_user
  before_action :require_admin_authorization

  # GET /
  def index
    @users = User.all
  end

  # PATCH /users/:id/update
  def update
    @user = User.find(params[:id])
    @user.update(admin: !@user.admin)
    redirect_to '/users/admin', notice: "User updated."
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to '/users/admin', notice: "User deleted." if @user.destroy
  end
end
