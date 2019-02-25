class AddBooktextsToBook < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :booktexts, :text, array: true, default: []
  end
end
