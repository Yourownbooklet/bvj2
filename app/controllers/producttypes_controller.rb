class ProducttypesController < ApplicationController
  def index
    @producttypes = Producttype.all
  end

  def new
    @producttype = Producttype.new
  end
end
