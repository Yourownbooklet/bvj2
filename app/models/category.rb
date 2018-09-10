class Category < ApplicationRecord
  has_many :subcategories
  has_one :image
end
