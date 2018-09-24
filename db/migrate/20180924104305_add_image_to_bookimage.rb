class AddImageToBookimage < ActiveRecord::Migration[5.1]
  def change
    add_reference :bookimages, :image, foreign_key: true
  end
end
