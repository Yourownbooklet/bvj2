class Book < ApplicationRecord
  belongs_to :user, foreign_key: "buyer_id", optional: true
  has_one :order
  belongs_to :booktemplate
  # has_one :booktext
  has_one :publisher, through: :booktemplate
  has_one :subcategory, through: :booktemplate
  # has_many :pagetemplates, through: :booktemplate
  # has_many :bookanswers, dependent: :destroy
end
