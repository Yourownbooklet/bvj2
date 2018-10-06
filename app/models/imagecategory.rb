class Imagecategory < ApplicationRecord
  has_many :categoryimages
  has_many :images, through: :categoryimages
end
