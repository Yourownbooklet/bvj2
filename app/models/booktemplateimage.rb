class Booktemplateimage < ApplicationRecord
  has_one :booktemplate
  has_one :image
  has_one :filename, through: :image
end
