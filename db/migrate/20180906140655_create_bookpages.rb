class CreateBookpages < ActiveRecord::Migration[5.1]
  def change
    create_table :bookpages do |t|
      t.string :name
      t.text :html

      t.timestamps
    end
  end
end
