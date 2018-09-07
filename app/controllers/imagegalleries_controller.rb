class ImagegalleriesController < ApplicationController
  def index
    @imagegalleries = Imagegallery.all
  end

  def show
    @imagegallery = Imagegallery.find(params[:id])
  end

  def new
    @imagegallery = Imagegallery.new
  end
end
