# frozen_string_literal: true
class Book < ApplicationRecord
  belongs_to :genre
  belongs_to :user
  validates :author, format: { with: /\A[a-zA-Z ]+\z/, message: "only allows letters" }
end
