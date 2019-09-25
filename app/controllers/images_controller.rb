class ImagesController < ApplicationController
  def index
    @images = Image.where(format: "p")
    render layout: "application-minimal"
  end

  def list
    get_book_templates
    @images = Image.all
  end

  def show
    @image = Image.find(params[:id])
    render layout: "application-minimal"
  end

  def new
    @image = Image.new
  end

  def edit
    @image = Image.find(params[:id])
    render layout: "application-minimal"
  end

  def create
    @image = Image.new(image_params)
  end

  def batch_update
    @images = Image.where(format: "p")
    @images.each do |i|

     i.image.attach(io: File.open("app/assets/images/#{i.filename}"), filename: i.filename)
     image_tn = MiniMagick::Image.new("app/assets/images/#{i.filename}")
     image_tn.resize "50x50"
     i.image_tn.attach(io: File.open(image_tn.path), filename: i.filename)
      # @image.image.attach(io: File.open("app/assets/images/Afbeelding-2.jpg"), filename: @image.filename)
    end
  end

  def image_params
    params.require(:image).permit(
        :name,
        :imagegallery_id,
        :filename,
        :format,
        :image,
        :image_tn,
        :image_small
      )
  end

end
