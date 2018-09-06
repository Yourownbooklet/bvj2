class CreatePagetemplates < ActiveRecord::Migration[5.1]
  def change
    create_table :pagetemplates do |t|
      t.string :name
      t.text :html

      t.timestamps
    end
  end
end
