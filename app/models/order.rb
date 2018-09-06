class Order < ApplicationRecord
  belongs_to :user, foreign_key: "buyer_id", optional: true
  belongs_to :book
end
