class Question < ApplicationRecord
  has_many :answers
  has_many :bookanswers
  belongs_to :subcategory
end
