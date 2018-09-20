class AddEditedToBook < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :edited, :boolean, default: false
  end
end
