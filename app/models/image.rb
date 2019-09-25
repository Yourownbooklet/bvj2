class Image < ApplicationRecord
  belongs_to :imagegallery
  has_many :categoryimages
  has_many :imagecategories, through: :categoryimages
  has_one :category
  has_one_attached :image
  has_one_attached :image_small
  has_one_attached :image_tn
end
