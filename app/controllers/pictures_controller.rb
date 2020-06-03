class PicturesController < ApplicationController
  def new
    @picture = Picture.new
  end

  def index
    @pictures = Picture.all
  end

  def create
    picture = Picture.new(picture_params)
    if picture.save
      redirect_to '/pictures/index'
    end
  end

  private
    def picture_params
      params.require(:picture).permit(:photo)
    end
end
