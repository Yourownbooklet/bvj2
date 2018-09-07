class CreateBookanswers < ActiveRecord::Migration[5.1]
  def change
    create_table :bookanswers do |t|
      t.string :answer

      t.timestamps
    end
  end
end
