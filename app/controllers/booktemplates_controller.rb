class BooktemplatesController < ApplicationController
  def index
    @booktemplates = Booktemplate.all
  end

  def show
    @booktemplate = Booktemplate.find(params[:id])
  end

  def new
    @booktemplate = Booktemplate.new
  end
end
