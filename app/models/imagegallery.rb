class Imagegallery < ApplicationRecord
  has_many :images
  has_many :subcategories
  belongs_to :user, foreign_key: "publisher_id"
end
