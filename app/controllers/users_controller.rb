class UsersController < ApplicationController
  before_action :authenticate_user!, :except => [:show, :index]
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    user = User.find(params[:id])
    user.images.each do |image|
      image.destroy
    end
    user.comments.each do |comment|
      comment.destroy
    end
    user.destroy
    redirect_to users_path
  end

end
