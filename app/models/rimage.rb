class Rimage < ApplicationRecord
  has_one_attached :image
  has_one_attached :image_small
  has_one_attached :image_tn
end
