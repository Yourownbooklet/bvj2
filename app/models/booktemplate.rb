class Booktemplate < ApplicationRecord
  has_one :productsubtype
  has_one :subcategory
  belongs_to :user, foreign_key: "publisher_id"
  has_many :pagetemplates
  has_many :books
  has_many :imagegalleries, through: :user
end
