class Book < ApplicationRecord
  belongs_to :user, foreign_key: "buyer_id", optional: true
  has_one :order
  has_many :bookpages
end
