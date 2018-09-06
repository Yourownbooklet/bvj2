class AddBookToBookpage < ActiveRecord::Migration[5.1]
  def change
    add_reference :bookpages, :book, foreign_key: true
  end
end
