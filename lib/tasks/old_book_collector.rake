# frozen_string_literal: true
namespace :old_books do
  desc 'Destroys books older than a week'
  # rake old_books:clean
  task clean: :environment do
    Book.where('created_at < ?', 7.days.ago).each(&:destroy)
  end
end
