class AddItemsToOrder < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :order_amount, :integer
    add_column :orders, :number_of_books, :integer
  end
end
