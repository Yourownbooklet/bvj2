class CreateImagecategories < ActiveRecord::Migration[5.1]
  def change
    create_table :imagecategories do |t|
      t.string :name

      t.timestamps
    end
  end
end
