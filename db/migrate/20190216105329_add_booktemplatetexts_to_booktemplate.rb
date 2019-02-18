class AddBooktemplatetextsToBooktemplate < ActiveRecord::Migration[5.1]
  def change
    add_column :booktemplates, :booktemplatetexts, :text, array: true, default: []
  end
end
