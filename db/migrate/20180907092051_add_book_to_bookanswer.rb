class AddBookToBookanswer < ActiveRecord::Migration[5.1]
  def change
    add_reference :bookanswers, :book, foreign_key: true
  end
end
