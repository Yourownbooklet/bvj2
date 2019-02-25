class Booktemplate < ApplicationRecord
  belongs_to :productsubtype
  belongs_to :subcategory
  belongs_to :user, foreign_key: "publisher_id"
  # has_many :pagetemplates
  has_many :books
  has_many :imagegalleries, through: :user
  has_one :booktemplatetext
end
