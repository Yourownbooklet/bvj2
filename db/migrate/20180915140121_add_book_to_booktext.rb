class AddBookToBooktext < ActiveRecord::Migration[5.1]
  def change
    add_reference :booktexts, :book, foreign_key: true
  end
end
