# frozen_string_literal: true
class DeleteWarning
  include Sidekiq::Worker
  sidekiq_options retry: false
  def perform(book_id)
    book = Book.find(book_id)
    return unless book # book has already been deleted
    book.old = true
    book.save
  end
end
