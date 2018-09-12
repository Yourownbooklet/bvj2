class BooksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new]

  def new
    @book = Book.new
    @booktemplate = Booktemplate.find(params[:format])
    @pagetemplates = Pagetemplate.where(booktemplate_id: @booktemplate.id)
    @subcategory = Subcategory.find(@booktemplate.subcategory_id)
    @questions = Question.where(subcategory_id: @subcategory.id)
    @book.booktemplate_id = @booktemplate.id
    @book.save!
    @questions.each do |q|
      @bookanswer = Bookanswer.new
      @bookanswer.question_id = q.id
      @bookanswer.book_id = @book.id
      @bookanswer.save!
    end
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
