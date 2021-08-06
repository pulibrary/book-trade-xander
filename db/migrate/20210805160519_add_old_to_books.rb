# frozen_string_literal: true
class AddOldToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :old, :boolean, default: false
  end
end
