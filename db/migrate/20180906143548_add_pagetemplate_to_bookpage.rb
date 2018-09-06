class AddPagetemplateToBookpage < ActiveRecord::Migration[5.1]
  def change
    add_reference :bookpages, :pagetemplate, foreign_key: true
  end
end
