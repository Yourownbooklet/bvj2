class BooktemplatesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @booktemplates = Booktemplate.all
  end

  def show
    @booktemplates = Booktemplate.all
    @booktemplate = Booktemplate.find(params[:id])
    @booktemplatetexts = Booktemplatetext.where(booktemplate_id: @booktemplate.id)
    @pagetemplates = Pagetemplate.where(booktemplate_id: @booktemplate.id)
    @subcategory = Subcategory.find(@booktemplate.subcategory_id)
    @questions = Question.where(subcategory_id: @subcategory.id)
    if params[:book_id]
      @booktext = Booktext.where(book_id: params[:book_id])[0]
    else
      @booktext = Booktext.new
    end
  end

  def new
    @booktemplate = Booktemplate.new
  end
end
