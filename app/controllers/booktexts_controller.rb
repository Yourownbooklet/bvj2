class BooktextsController < ApplicationController
  skip_before_action :authenticate_user!, only: :create

  def create
    # create book first
    @book = Book.new(book_params)
    @book.save!
    # now create booktext
    @booktext = Booktext.new(booktext_params)
    @booktext.book_id = @book.id
    @booktext.save!
    redirect_to edit_book_path(@book)
  end

  def update
    @booktext = Booktext.find(params[:id])
    @booktext.update!(booktext_params)
    # redirect_to edit_book_path
  end

  private

  def book_params
    params.permit(:booktemplate_id, :buyer_id)
  end

  def booktext_params
    params.permit(:text1, :text2, :text3, :text4, :text5, :text6, :text7, :text8, :text9, :text10, :text11, :text12, :text13, :text14, :text15, :text16, :text17, :id)
  end
end
