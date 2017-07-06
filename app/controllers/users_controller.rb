class UsersController < ApplicationController
  before_action :authenticate_user!, :except => [:show, :index]
  def index
    # binding.pry
  end

  def show
    @user = User.find(params[:id])
  end

end
