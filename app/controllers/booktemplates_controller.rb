class BooktemplatesController < ApplicationController
  respond_to :html, :json, :js
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @booktemplates = Booktemplate.all
    @btids = []
    @booktemplates.each do |bt|
      @btids << bt.id
    end
    render layout: "application"
  end

  def show
    @booktemplates = Booktemplate.all
    @booktemplate = Booktemplate.find(params[:id])
    @booktemplatetexts = Booktemplatetext.where(booktemplate_id: @booktemplate.id)
    # @pagetemplates = Pagetemplate.where(booktemplate_id: @booktemplate.id)
    @html_prefix = @booktemplate.HTMLPrefix
    @subcategory = Subcategory.find(@booktemplate.subcategory_id)
    @questions = Question.where(subcategory_id: @subcategory.id)
    if params[:book_id]
      @booktext = Booktext.where(book_id: params[:book_id])[0]
    else
      @booktext = Booktext.new
    end
  end

  def new
    @booktemplate = Booktemplate.new
  end

  def create
    @booktemplate = Booktemplate.new(booktemplate_params)
    @booktemplate.save!
  end

  def edit
    @booktemplate = Booktemplate.find(params[:id])
  end

  private

  def booktemplate_params
    params.permit(
      :publisher_id,
      :productsubtype_id,
      :subcategory_id,
      :Jsfilename,
      :HTMLPrefix,
      :NrOfPages,
      :normal_price,
      :normal_hardcover_extra_price,
      :large_price,
      :large_hardcover_extra_price,
      :booktemplatetexts
      )
  end
end
