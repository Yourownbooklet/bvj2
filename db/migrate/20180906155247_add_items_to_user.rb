class AddItemsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :streetname_and_number, :string
    add_column :users, :postalcode, :string
    add_column :users, :city, :string
    add_column :users, :country, :string
    add_column :users, :phonenumber, :string
    add_column :users, :addressee, :string
    add_column :users, :streetname_and_number2, :string
    add_column :users, :postalcode2, :string
    add_column :users, :city2, :string
    add_column :users, :country2, :string
    add_column :users, :afleveradreshetzelfde, :boolean, default: true
    add_column :users, :loyalty_points, :integer
    add_column :users, :company_name, :string
    add_column :users, :company_name2, :string
    add_column :users, :admin, :boolean, default: false
  end
end
