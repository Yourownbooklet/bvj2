class SubcategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  def index
    @booktemplates = Booktemplate.all
    @subcategories = Subcategory.all
  end

  def show
    @booktemplates = Booktemplate.all
    @subcategory = Subcategory.find(params[:id])
    # @booktemplates = Booktemplate.where(subcategory_id: @subcategory.id)
  end

  def new
    @subcategory = Subcategory.new
  end
end
