class SubcategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @category = Category.find(params[:format])
    @subcategories = Subcategory.where(category_id: @category.id)
  end

  def new
    @subcategory = Subcategory.new
  end
end
