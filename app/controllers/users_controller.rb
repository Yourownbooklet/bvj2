class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @orders = Order.where(buyer_id: @user)
    @books = Book.where(buyer_id: @user)
    @booktemplates = Booktemplate.all
  end
end
