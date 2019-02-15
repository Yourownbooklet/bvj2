class BookanswersController < ApplicationController
  def index
    @bookanswers = Bookanswer.all
  end

  def new
  end

  def create
    @bookanswer = Bookanswer.new(bookanswer_params)
    @bookanswer.save!
  end

  def update
    @bookanswer = Bookanswer.find(params[:id])
    @bookanswer.update!(bookanswer_params)
  end

  private

  def bookanswer_params
    params.permit(:question_id, :book_id, :answer)
  end
end
