class ImagesController < ApplicationController
  def index
    @images = Image.where(imagegallery_id: @imagegallery)
  end

  def list
    get_book_templates
    Aws.config.update({
      region: 'eu-central-1',
      credentials: Aws::Credentials.new(Rails.application.credentials.aws[:access_key_id], Rails.application.credentials.aws[:secret_access_key])
    })
    s3 = Aws::S3::Client.new
    arr = s3.list_objects(bucket: 'bvj2-images')
    @arr2 = []
    arr.contents.each do |o|
      @arr2 << o.key

    end
  end

  def new
    @image = Image.new
  end
end
