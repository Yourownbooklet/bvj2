class AddImagegalleryToSubcategory < ActiveRecord::Migration[5.1]
  def change
    add_reference :subcategories, :imagegallery, foreign_key: true
  end
end
