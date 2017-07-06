class ImagesController < ApplicationController
  before_action :authenticate_user!, :except => [:show]
  def new
    @image = Image.new
  end

  def create
    @image = current_user.images.create(image_params)

    params['image']['tags'].split(',').each do |tag|
      if Tag.tag_duplicate_check(tag)===0
        @image.tags.create({:name=>tag})
      else
        @found_tag = Tag.find(Tag.tag_duplicate_check(tag))
        @image.tags.push(@found_tag)
      end
    end
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
