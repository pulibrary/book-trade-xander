# frozen_string_literal: true
class AddGenreToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :genre_id, :integer
    add_index :books, :genre_id
  end
end
