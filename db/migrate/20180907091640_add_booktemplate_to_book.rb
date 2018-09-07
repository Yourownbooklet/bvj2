class AddBooktemplateToBook < ActiveRecord::Migration[5.1]
  def change
    add_reference :books, :booktemplate, foreign_key: true
  end
end
