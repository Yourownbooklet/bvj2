class AddImagecategoryToCategoryimage < ActiveRecord::Migration[5.1]
  def change
    add_reference :categoryimages, :imagecategory, foreign_key: true
  end
end
