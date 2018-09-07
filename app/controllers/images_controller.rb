class ImagesController < ApplicationController
  def index
    @images = Image.where(imagegallery_id: @imagegallery)
  end

  def new
    @image = Image.new
  end
end
