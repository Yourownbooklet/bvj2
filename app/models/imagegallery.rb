class Imagegallery < ApplicationRecord
  has_many :images
  belongs_to :user, foreign_key: "publisher_id"
end
