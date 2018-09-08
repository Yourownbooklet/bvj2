class SubcategoriesController < ApplicationController

  def index
    @subcategories = Subcategory.all
  end

  def new
    @subcategory = Subcategory.new
  end
end
