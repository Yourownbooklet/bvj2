class AddProductsubtypeToPagetemplate < ActiveRecord::Migration[5.1]
  def change
    add_reference :pagetemplates, :productsubtype, foreign_key: true
  end
end
