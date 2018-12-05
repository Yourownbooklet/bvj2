class AddNrOfPagesToBooktemplate < ActiveRecord::Migration[5.1]
  def change
    add_column :booktemplates, :NrOfPages, :integer
  end
end
