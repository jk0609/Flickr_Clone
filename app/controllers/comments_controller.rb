class CommentsController < ApplicationController

  def create
    @image = Image.find(params[:image_id])
    @comment = @image.comments.new(comment_params)
    @comment.user_id = current_user.id
    @comment.save
    redirect_to user_image_path(current_user, @image)
  end

private
  def comment_params
    params.require(:comment).permit(:content)
  end

end
