class BooktemplatesController < ApplicationController
  respond_to :html, :json, :js
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @booktemplates = Booktemplate.all
    @btids = []
    @booktemplates.each do |bt|
      @btids << bt.id
    end
    render layout: "application-minimal"
  end

  def show
    @booktemplates = Booktemplate.all
    @booktemplate = Booktemplate.find(params[:id])
    @booktemplatetexts = @booktemplate.booktemplatetexts
    # @pagetemplates = Pagetemplate.where(booktemplate_id: @booktemplate.id)
    @html_prefix = @booktemplate.HTMLPrefix
    @subcategory = Subcategory.find(@booktemplate.subcategory_id)
    @questions = Question.where(subcategory_id: @subcategory.id)
    @book = Book.new
  end

  def new
    @booktemplate = Booktemplate.new
    @publishers = User.all
    @subtypes = Productsubtype.all
    @subcats = Subcategory.all
    get_book_templates
    # same as: @booktemplates = Booktemplate.all
    @booktemplate.booktemplatetexts = ["Template textblok1"]
    render layout: "application-minimal"
  end

  def create
    @booktemplate = Booktemplate.new(booktemplate_params)
    @booktemplate.booktemplatetexts[0] = params[:textblok1]
    @booktemplate.save!
    redirect_to booktemplates_path
  end

  def edit
    @booktemplate = Booktemplate.find(params[:id])
    @btt_count = @booktemplate.booktemplatetexts.count;
  end

  def update

  end

  def check_if_booktemplate_used
    if Book.find_by(booktemplate: params[:id])
      @booktemplate_used = true
    else
      @booktemplate_used = false
    end
  end

  def destroy
    @booktemplate = Booktemplate.find(params[:id])
    check_if_booktemplate_used
    if @booktemplate_used
      flash[:alert] = "booktemplate is gebruikt om een boek te maken en kan dus niet verwijderd worden."
    else
      @booktemplate.destroy!
    end
    redirect_back(fallback_location: root_path)
  end

  private

  def booktemplate_params
    params.require(:booktemplate).permit(
      :name,
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
