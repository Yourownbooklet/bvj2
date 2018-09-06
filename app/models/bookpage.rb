class Bookpage < ApplicationRecord
  belongs_to :book
  belongs_to :pagetemplate
end
