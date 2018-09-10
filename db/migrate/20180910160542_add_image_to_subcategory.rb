class AddImageToSubcategory < ActiveRecord::Migration[5.1]
  def change
    add_reference :subcategories, :image, foreign_key: true
  end
end
