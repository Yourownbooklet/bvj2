class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :test]

  def home
    @booktemplates = Booktemplate.all
    @categories = Category.all
  end

  def about
  end

  def test
    @booktemplates = Booktemplate.all
    @pagetemplates = Pagetemplate.where(booktemplate_id: 3)
    @booktexts = Booktext.where(book_id: 25)
    render layout: 'test'
  end
end
