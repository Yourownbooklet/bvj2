class Subcategory < ApplicationRecord
  has_many :questions
  has_many :answers, through: :question
  has_many :booktemplates
  belongs_to :category
end
