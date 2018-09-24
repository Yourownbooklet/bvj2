class AddBookToBookimage < ActiveRecord::Migration[5.1]
  def change
    add_reference :bookimages, :book, foreign_key: true
  end
end
