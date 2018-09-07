class CreateBooktemplates < ActiveRecord::Migration[5.1]
  def change
    create_table :booktemplates do |t|
      t.string :name

      t.timestamps
    end
  end
end
