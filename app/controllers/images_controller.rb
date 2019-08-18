class ImagesController < ApplicationController
  def index
    @images = Image.where(imagegallery_id: @imagegallery)
  end

  def list
    get_book_templates
    @images = =Image.all
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
  end

  def image_params
    params.require(:image).permit(

      )
  end

end
