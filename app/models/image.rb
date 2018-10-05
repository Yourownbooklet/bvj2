class Image < ApplicationRecord
  belongs_to :imagegallery
  has_many :categoryimages
  has_many :imagecategories, through: :categoryimages
  has_one :category
end
