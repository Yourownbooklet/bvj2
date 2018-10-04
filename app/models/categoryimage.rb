class Categoryimage < ApplicationRecord
  has_one :image
  has_one :imagecategory
  has_one :filename, through: :image
end
