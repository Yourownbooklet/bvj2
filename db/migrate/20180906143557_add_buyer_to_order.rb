class AddBuyerToOrder < ActiveRecord::Migration[5.1]
  def change
    add_reference :orders, :buyer, foreign_key: { to_table: :users}
  end
end
