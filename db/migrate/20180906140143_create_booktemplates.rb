class CreateBooktemplates < ActiveRecord::Migration[5.1]
  def change
    create_table :booktemplates do |t|
      t.string :name
      t.string :rails
      t.string :g
      t.string :model
      t.string :Producttype
      t.string :name
      t.string :rails
      t.string :g
      t.string :model
      t.string :Productsubtype
      t.string :name
      t.string :rails
      t.string :g
      t.string :model
      t.string :Category
      t.string :name
      t.string :rails
      t.string :g
      t.string :model
      t.string :Subcategory
      t.string :name
      t.string :rails
      t.string :g
      t.string :model
      t.string :Pagetemplate
      t.string :name
      t.text :html
      t.string :rails
      t.string :g
      t.string :model
      t.string :Bookpage
      t.string :name
      t.text :html
      t.string :rails
      t.string :g
      t.string :model
      t.string :Book
      t.string :name
      t.string :rails
      t.string :g
      t.string :model
      t.string :Question
      t.string :question
      t.boolean :open
      t.string :rails
      t.string :g
      t.string :model
      t.string :Answer
      t.string :answer
      t.string :rails
      t.string :g
      t.string :model
      t.string :Question
      t.string :question
      t.string :rails
      t.string :g
      t.string :model
      t.string :Imagegallery
      t.string :name
      t.string :rails
      t.string :g
      t.string :model
      t.string :Image
      t.string :name

      t.timestamps
    end
  end
end
