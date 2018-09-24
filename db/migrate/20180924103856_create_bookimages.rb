class CreateBookimages < ActiveRecord::Migration[5.1]
  def change
    create_table :bookimages do |t|

      t.timestamps
    end
  end
end
