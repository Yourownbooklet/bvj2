class AddImageToCategoryimage < ActiveRecord::Migration[5.1]
  def change
    add_reference :categoryimages, :image, foreign_key: true
  end
end
