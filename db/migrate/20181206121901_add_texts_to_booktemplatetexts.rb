class AddTextsToBooktemplatetexts < ActiveRecord::Migration[5.1]
  def change
    add_column :booktemplatetexts, :text12, :string
    add_column :booktemplatetexts, :text13, :string
  end
end
