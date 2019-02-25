class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @booktemplates = Booktemplate.all
  end
end
