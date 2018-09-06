class AddSubcategoryToQuestion < ActiveRecord::Migration[5.1]
  def change
    add_reference :questions, :subcategory, foreign_key: true
  end
end
