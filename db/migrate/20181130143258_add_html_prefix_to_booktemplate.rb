class AddHtmlPrefixToBooktemplate < ActiveRecord::Migration[5.1]
  def change
    add_column :booktemplates, :HTMLPrefix, :string
  end
end
