class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @subcategories = Subcategory.where(category_id: @category.id)
  end

  def new
    @category = Category.new
  end
end
