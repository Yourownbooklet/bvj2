class Image < ApplicationRecord
  belongs_to :imagegallery
  has_many :categories
end
