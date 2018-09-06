class Pagetemplate < ApplicationRecord
  has_many :bookpages
  belongs_to :booktemplate
end
