class Productsubtype < ApplicationRecord
  has_many :booktemplates
  belongs_to :producttype
end
