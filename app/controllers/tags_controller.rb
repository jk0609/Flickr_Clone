class TagsController < ApplicationController
  before_action :authenticate_user!, :except => [:show, :index]
  def show
    @tag = Tag.find(params[:id])
  end

end
