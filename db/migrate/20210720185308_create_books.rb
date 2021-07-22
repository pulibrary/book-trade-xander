class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.text :description
      t.string :contact_email
      t.string :contact_name

      t.timestamps
    end
  end
end