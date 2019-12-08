class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :test, :payment]

  def home
    @booktemplates = Booktemplate.all
    @categories = Category.all
  end

  def about
    get_book_templates
  end

  def test
    @booktemplates = Booktemplate.all
    @pagetemplates = Pagetemplate.where(booktemplate_id: 3)
    @booktexts = Booktext.where(book_id: 25)
    render layout: 'test'
  end

  def payment
    @book = Book.find(params[:book_id])
    render layout: 'devise'
  end
end
