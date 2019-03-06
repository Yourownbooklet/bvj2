class OrdersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new]

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    # @booktemplates = Booktemplate.all
    @book = Book.find(params[:book_id])
    # @book.buyer_id = current_user.id
    # @book.save!
    @booktextsnew = @book.booktexts
    # @booktemplate = Booktemplate.find(@book.booktemplate_id)
    @order = Order.new
    render layout: 'devise'
  end

  def create
    @order = Order.new(order_params)
    @order.save!
  end

  def update
    @order = Order.find(params[:id])
    @order.update!(order_params)
  end

  private

  def order_params
    params.permit(:book_id, :buyer_id, :orderstatus_id)
  end
end
