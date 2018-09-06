class AddBookToOrder < ActiveRecord::Migration[5.1]
  def change
    add_reference :orders, :book, foreign_key: true
  end
end
