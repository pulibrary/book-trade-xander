# frozen_string_literal: true
class UserController < ApplicationController
  before_action :require_user

  # GET /user
  def index; end
end
