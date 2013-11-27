class ImagesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @image = Image.new(image_params)

    if @image.update(image_params)
      render json: {filelink: @image.image_url}
    else
      head :bad_request
    end
  end

  private

  def image_params
    params.require(:image).permit(:image)
  end
end
