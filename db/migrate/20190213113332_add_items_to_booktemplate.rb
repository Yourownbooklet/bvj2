class AddItemsToBooktemplate < ActiveRecord::Migration[5.1]
  def change
    add_column :booktemplates, :normal_price, :integer
    add_column :booktemplates, :large_price, :integer
    add_column :booktemplates, :normal_hardcover_extra_price, :integer
    add_column :booktemplates, :large_hardcover_extra_price, :integer
  end
end
