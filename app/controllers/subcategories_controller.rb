class SubcategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  def index
    @subcategories = Subcategory.all
  end

  def show
    @subcategory = Subcategory.find(params[:id])
    @booktemplates = Booktemplate.where(subcategory_id: @subcategory.id)
  end

  def new
    @subcategory = Subcategory.new
  end
end
