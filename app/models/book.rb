# frozen_string_literal: true
class Book < ApplicationRecord
  belongs_to :genre
  belongs_to :user
end
