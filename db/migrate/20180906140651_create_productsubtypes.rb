class CreateProductsubtypes < ActiveRecord::Migration[5.1]
  def change
    create_table :productsubtypes do |t|
      t.string :name

      t.timestamps
    end
  end
end
