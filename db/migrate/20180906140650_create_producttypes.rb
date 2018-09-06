class CreateProducttypes < ActiveRecord::Migration[5.1]
  def change
    create_table :producttypes do |t|
      t.string :name

      t.timestamps
    end
  end
end
