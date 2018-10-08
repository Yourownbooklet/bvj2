class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  def index
    @booktemplates = Booktemplate.all
    @categories = Category.all
  end

  def show
    @booktemplates = Booktemplate.all
    @category = Category.find(params[:id])
    @subcategories = Subcategory.where(category_id: @category.id)
  end

  def new
    @category = Category.new
  end
end
