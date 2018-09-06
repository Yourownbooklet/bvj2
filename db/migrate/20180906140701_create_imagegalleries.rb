class CreateImagegalleries < ActiveRecord::Migration[5.1]
  def change
    create_table :imagegalleries do |t|
      t.string :name

      t.timestamps
    end
  end
end
