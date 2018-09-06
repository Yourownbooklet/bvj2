class AddProducttypeToProductsubtype < ActiveRecord::Migration[5.1]
  def change
    add_reference :productsubtypes, :producttype, foreign_key: true
  end
end
