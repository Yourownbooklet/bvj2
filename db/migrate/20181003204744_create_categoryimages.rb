class CreateCategoryimages < ActiveRecord::Migration[5.1]
  def change
    create_table :categoryimages do |t|

      t.timestamps
    end
  end
end
