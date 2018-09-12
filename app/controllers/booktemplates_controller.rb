class BooktemplatesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @booktemplates = Booktemplate.all
  end

  def show
    @booktemplate = Booktemplate.find(params[:id])
    @pagetemplates = Pagetemplate.where(booktemplate_id: @booktemplate.id)
    @subcategory = Subcategory.find(@booktemplate.subcategory_id)
    @questions = Question.where(subcategory_id: @subcategory.id)
  end

  def new
    @booktemplate = Booktemplate.new
  end
end
