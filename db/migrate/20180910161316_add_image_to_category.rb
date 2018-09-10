class AddImageToCategory < ActiveRecord::Migration[5.1]
  def change
    add_reference :categories, :image, foreign_key: true
  end
end
