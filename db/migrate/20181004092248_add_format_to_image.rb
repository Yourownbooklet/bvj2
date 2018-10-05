class AddFormatToImage < ActiveRecord::Migration[5.1]
  def change
    add_column :images, :format, :string
  end
end
