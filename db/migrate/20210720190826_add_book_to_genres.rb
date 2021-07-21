class AddBookToGenres < ActiveRecord::Migration[6.1]
  def change
    add_column :genres, :genre_id, :integer
    add_index :genres, :genre_id
  end
end
