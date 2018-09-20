class Book < ApplicationRecord
  belongs_to :user, foreign_key: "buyer_id", optional: true
  has_one :order
  has_one :booktemplate
  has_one :booktext
  has_many :pagetemplates, through: :booktemplate
  has_many :bookanswers, dependent: :destroy
end
