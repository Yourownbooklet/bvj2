class BooksController < ApplicationController
  def new
    @book = Book.new
    @bookanswer = Bookanswer.new
    @subcategory = Subcategory.find(params[:subcategory_id])
    @questions = Question.where(subcategory_id: @subcategory.id)
    @booktemplate = Booktemplate.find(params[:subcategory_id])
  end

  def create
    @book = Book.new(book_params)
    @bookanswer.save!
  end

  private

  def book_params
    params.permit(:booktemplate_id, :buyer_id, :name)
  end
end
