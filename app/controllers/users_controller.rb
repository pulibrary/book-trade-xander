# frozen_string_literal: true
class UsersController < ApplicationController
  # GET /
  def index
    @users = User.all
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to '/users/admin', notice: "User deleted." if @user.destroy
  end
end
