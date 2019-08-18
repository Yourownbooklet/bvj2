class RimagesController < ApplicationController

  def index
    get_book_templates
    @rimages = Rimage.all
    render layout: "application-minimal"
  end

  def show
    get_book_templates
    @rimage = Rimage.find(params[:id])
    render layout: "application-minimal"
  end

  def list
    get_book_templates
    Aws.config.update({
      region: 'eu-central-1',
      credentials: Aws::Credentials.new(
        Rails.application.credentials.aws[:access_key_id],
        Rails.application.credentials.aws[:secret_access_key]
      )
    })
    s3 = Aws::S3::Client.new
    s3r = Aws::S3::Resource.new
    @bucket = s3r.bucket('bvj2-images')
    @arr1 = s3.list_objects(bucket: 'bvj2-images')
    @arr2 = []
    @arr1.contents.each do |o|
      @arr2 << o.key

    end
  end

  def new
    get_book_templates
    @rimage = Rimage.new
  end

  def create
    @rimage = Rimage.new(rimage_params)
     image_tn = MiniMagick::Image.new(params[:rimage][:image].tempfile.path)
     image_tn.resize "50x50"
     @rimage.image_tn.attach(io: File.open(image_tn.path), filename: params[:rimage][:image].original_filename)
     # binding.pry
    @rimage.save!
    redirect_to rimages_path
  end

  def rimage_params
    params.require(:rimage).permit(
        :format,
        :image,
        :image_tn,
        :image_small
      )
  end

end
