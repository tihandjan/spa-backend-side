class PicturesController < ApplicationController

  def show
    @picture = Picture.find(params[:id])
    render json: @picture
  end

  def picture_create
    @picture = Picture.find(params[:id])
    if @picture.update(file: params[:file])
      render json: @picture
    else
      render json: @picture.errors, status: :unprocessable_entity
    end
  end

end
