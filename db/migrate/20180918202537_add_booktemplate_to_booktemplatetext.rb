class AddBooktemplateToBooktemplatetext < ActiveRecord::Migration[5.1]
  def change
    add_reference :booktemplatetexts, :booktemplate, foreign_key: true
  end
end
