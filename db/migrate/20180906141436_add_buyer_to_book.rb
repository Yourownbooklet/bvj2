class AddBuyerToBook < ActiveRecord::Migration[5.1]
  def change
    add_reference :books, :buyer, foreign_key: { to_table: :users}
  end
end
