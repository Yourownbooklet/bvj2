class AddJsfilenameToBooktemplate < ActiveRecord::Migration[5.1]
  def change
    add_column :booktemplates, :Jsfilename, :string
  end
end
