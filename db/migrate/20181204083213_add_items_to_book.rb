class AddItemsToBook < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :email, :string
    add_column :books, :company, :string
    add_column :books, :sender, :string
    add_column :books, :streetname_and_number, :string
    add_column :books, :postalcode, :string
    add_column :books, :city, :string
    add_column :books, :country, :string
    add_column :books, :phonenumber, :string
    add_column :books, :addressee, :string
    add_column :books, :company2, :string
    add_column :books, :streetname_and_number2, :string
    add_column :books, :postalcode_city2, :string
    add_column :books, :country2, :string
    add_column :books, :afleveradreshetzelfde, :boolean, default: true
    add_column :books, :booktexts, :text, array: true, default: []
  end
end
