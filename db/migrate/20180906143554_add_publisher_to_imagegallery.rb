class AddPublisherToImagegallery < ActiveRecord::Migration[5.1]
  def change
    add_reference :imagegalleries, :publisher, foreign_key: { to_table: :users}
  end
end
