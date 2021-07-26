# frozen_string_literal: true
class HomeController < ApplicationController
  # GET /
  def index
    redirect_to '/books' if user_signed_in?
  end
end
