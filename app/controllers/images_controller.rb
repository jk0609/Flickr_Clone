class ImagesController < ApplicationController

  def new
    @image = Image.new
  end

  def create
    @image = current_user.images.create(image_params)
    redirect_to user_path(current_user)
  end

  def show
    @image = Image.find(params[:id])
    @comment = Comment.new
  end

private
  def image_params
    params.require(:image).permit(:image_path)
  end

end
