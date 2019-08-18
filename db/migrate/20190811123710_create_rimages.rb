class CreateRimages < ActiveRecord::Migration[5.2]
  def change
    create_table :rimages do |t|
      t.string :format

      t.timestamps
    end
  end
end
