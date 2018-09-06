class AddImagegalleryToImage < ActiveRecord::Migration[5.1]
  def change
    add_reference :images, :imagegallery, foreign_key: true
  end
end
