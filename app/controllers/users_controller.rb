class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @orders = Order.where(buyer_id: @user)
    @books = Book.where(buyer_id: @user)
    @booktemplates = Booktemplate.all
  end

  def edit
    get_book_templates
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update!(user_params)
    redirect_to user_path
  end

  private

  def user_params
    params.require(:user).permit(
    :first_name, :last_name,
    :company_name,
    :streetname_and_number,
    :postalcode, :city,
    :country,
    :phonenumber,
    :streetname_and_number2,
    :postalcode2, :city2,
    :country2,
    :afleveradreshetzelfde, :company_name2,
    :loyalty_points
    )
  end
end
